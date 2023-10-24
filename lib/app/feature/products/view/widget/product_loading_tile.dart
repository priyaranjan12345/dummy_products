import 'package:flutter/material.dart';

import '../../../../../global/widgets/custom_shimmer.dart';

class ProductLoadingTile extends StatelessWidget {
  const ProductLoadingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: Row(
          children: [
            Flexible(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: CustomShimmer(
                    child: Container(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      width: 140,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomShimmer(
                      child: Container(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        width: 60,
                        height: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomShimmer(
                      child: Container(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        width: 100,
                        height: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomShimmer(
                      child: Container(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        width: 100,
                        height: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        buttonPadding: EdgeInsets.zero,
                        children: [
                          CustomShimmer(
                            child: Container(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                              width: 60,
                              height: 18,
                            ),
                          ),
                          const FilledButton(
                            onPressed: null,
                            child: Text("Details"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
