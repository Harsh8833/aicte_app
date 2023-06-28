import 'package:aicte_app/MVVM/model/Opportunity%20Model/opportunity_link_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OpportunitiesLinks extends StatefulWidget {
  final List<OpportunityLinkModel> links;
  const OpportunitiesLinks({Key? key, required this.links}) : super(key: key);

  @override
  State<OpportunitiesLinks> createState() => _OpportunitiesLinksState();
}

class _OpportunitiesLinksState extends State<OpportunitiesLinks> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _isExpanded ? 'Collapse' : 'Overview',
                    style: TextStyle(
                      color: Color(0xFFF75700),
                    ),
                  ),
                  Icon(
                      _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: Color(0xFFF75700))
                ],
              )),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: _isExpanded ? (50.0 * widget.links.length) : 0.0,
          curve: Curves.easeInOut,
          child: _isExpanded
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      for (var link in widget.links)
                        LinkButton(
                            text: link.title,
                            onPressed: () {
                              final url = Uri.parse(link.link);
                              launchUrl(
                                url,
                                mode: LaunchMode.inAppWebView,
                              );
                            })
                    ],
                  ),
                )
              : null,
        ),
      ],
    );
  }
}

class LinkButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LinkButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFFF75700),
        ),
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
