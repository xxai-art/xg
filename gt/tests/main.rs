use gt::{Q, QE};

Q! {
    li:
        SELECT cid,rid,ts FROM fav.user ORDER BY ts DESC LIMIT 10
}

QE! {
    test:
        SELECT 1
}

#[tokio::test]
async fn main() -> anyhow::Result<()> {
  let r = li().await?;
  dbg!(r);
  let test = test().await?;
  dbg!(test);
  Ok(())
}
