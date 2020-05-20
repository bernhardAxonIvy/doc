@Test
void products_testEnv(AppFixture fixture)
{
  /* We can switch the used environment with the AppFixture. */
  fixture.environment("test-env");
  
  assertThat(OrderUtil.getProducts()).hasSize(2);
  Product table = OrderUtil.getProducts().get(0);
  Product chair = OrderUtil.getProducts().get(1);
  
  /* The test-env provides different values as global variables. */
  assertThat(table.getSinglePrice()).isEqualTo(500.0);
  assertThat(chair.getSinglePrice()).isEqualTo(50.0);
}
