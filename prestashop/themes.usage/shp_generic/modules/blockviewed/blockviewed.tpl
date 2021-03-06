<!-- Block Viewed products -->
{if $productsViewedObj}
	<div id="viewed-products_block_left" class="block products_block">
		<h4>{l s='Viewed products' mod='blockviewed'}</h4>
		<div class="block_content">
			<table class="product_list">
			{foreach from=$productsViewedObj item='product' name=product}
				{assign var='productLink' value=$link->getProductLink($product, $product->link_rewrite)}
				<tr class="ajax_block_product">
					<td class="product_desc" colspan="2">
						<a href="{$productLink|escape:'htmlall':'UTF-8'}" title="{$product->name|escape:'htmlall':'UTF-8'}: {$product->description_short|strip_tags|truncate:100:'...'}">
					    	{$product->name|truncate:30:'..'|escape:'htmlall':'UTF-8'}
					 	</a>
					</td>
<!--
					<td rowspan="2"><a class="button_mini ajax_add_to_cart_button" href="{$base_dir}cart.php?qty=1&amp;id_product={$product->id|intval}&amp;token={$static_token}&amp;add" rel="ajax_id_product_{$product->id|intval}" title="{l s='Add to cart' mod='blockviewed'}">{l s='Buy' mod='blockviewed'}</a></td>
				</tr>
				<tr>
					<td>{$product->price}</td>
-->
				</tr>
			{/foreach}
			</table>
		</div>
	</div>
{/if}

{if $articlesViewedObj}
	<div id="viewed-products_block_left" class="block products_block">
		<h4>{l s='Viewed articles' mod='blockviewed'}</h4>
		<div class="block_content">
			<table class="product_list">
			{foreach from=$articlesViewedObj item='article' name=article}
				{assign var='productLink' value=$link->getProductLink($article, $article->link_rewrite)}
				<tr class="ajax_block_product">
					<td class="product_desc">
					 <a
					  href="{$articleLink|escape:'htmlall':'UTF-8'}"
					  title="{$article->name|escape:'htmlall':'UTF-8'}: {$article->description_short|strip_tags|truncate:100:'...'}"
					 >
					  {$article->name|truncate:37:'..'|escape:'htmlall':'UTF-8'}

					 </a>
					</td>
				</tr>
				<tr>

				</tr>
			{/foreach}
			</table>
		</div>
	</div>
{/if}
