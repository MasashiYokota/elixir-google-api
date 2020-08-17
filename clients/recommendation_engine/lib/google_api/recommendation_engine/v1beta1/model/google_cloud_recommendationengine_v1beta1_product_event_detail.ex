# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductEventDetail do
  @moduledoc """
  ProductEventDetail captures user event information specific to retail products.

  ## Attributes

  *   `cartId` (*type:* `String.t`, *default:* `nil`) - Optional. The id or name of the associated shopping cart. This id is used to associate multiple items added or present in the cart before purchase. This can only be set for `add-to-cart`, `remove-from-cart`, `checkout-start`, `purchase-complete`, or `shopping-cart-page-view` events.
  *   `listId` (*type:* `String.t`, *default:* `nil`) - Required for `add-to-list` and `remove-from-list` events. The id or name of the list that the item is being added to or removed from. Other event types should not set this field.
  *   `pageCategories` (*type:* `list(GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy.t)`, *default:* `nil`) - Required for `category-page-view` events. Other event types should not set this field. The categories associated with a category page. Category pages include special pages such as sales or promotions. For instance, a special sale page may have the category hierarchy: categories : ["Sales", "2017 Black Friday Deals"].
  *   `productDetails` (*type:* `list(GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductDetail.t)`, *default:* `nil`) - The main product details related to the event. This field is required for the following event types: * `add-to-cart` * `add-to-list` * `checkout-start` * `detail-page-view` * `purchase-complete` * `refund` * `remove-from-cart` * `remove-from-list` This field is optional for the following event types: * `page-visit` * `shopping-cart-page-view` - note that 'product_details' should be set for this unless the shopping cart is empty. * `search` (highly encouraged) In a `search` event, this field represents the products returned to the end user on the current page (the end user may have not finished broswing the whole page yet). When a new page is returned to the end user, after pagination/filtering/ordering even for the same query, a new SEARCH event with different product_details is desired. The end user may have not finished broswing the whole page yet. This field is not allowed for the following event types: * `category-page-view` * `home-page-view`
  *   `purchaseTransaction` (*type:* `GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PurchaseTransaction.t`, *default:* `nil`) - Optional. A transaction represents the entire purchase transaction. Required for `purchase-complete` events. Optional for `checkout-start` events. Other event types should not set this field.
  *   `searchQuery` (*type:* `String.t`, *default:* `nil`) - Required for `search` events. Other event types should not set this field. The user's search query as UTF-8 encoded text with a length limit of 5 KiB.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cartId => String.t(),
          :listId => String.t(),
          :pageCategories =>
            list(
              GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy.t()
            ),
          :productDetails =>
            list(
              GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductDetail.t()
            ),
          :purchaseTransaction =>
            GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PurchaseTransaction.t(),
          :searchQuery => String.t()
        }

  field(:cartId)
  field(:listId)

  field(:pageCategories,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy,
    type: :list
  )

  field(:productDetails,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductDetail,
    type: :list
  )

  field(:purchaseTransaction,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1PurchaseTransaction
  )

  field(:searchQuery)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductEventDetail do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductEventDetail.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductEventDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end