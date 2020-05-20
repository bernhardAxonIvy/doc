@Test
void products()
{
  assertThat(OrderUtil.getProducts()).hasSize(2);
  Product table = OrderUtil.getProducts().get(0);
  Product chair = OrderUtil.getProducts().get(1);
  
  assertThat(table.getName()).isEqualTo("Table");
  assertThat(table.getSinglePrice()).isEqualTo(375.5);
  
  assertThat(chair.getName()).isEqualTo("Chair");
  assertThat(chair.getSinglePrice()).isEqualTo(89.60);
}
