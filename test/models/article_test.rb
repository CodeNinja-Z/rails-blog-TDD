require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def setup
    @article = Article.create(title: "FirstArticle", content: "This is a test article.")
  end
 
  test "article should be valid" do
    assert @article.valid?
  end

  test "title should be present" do
    @article.title = ""
    assert @article.invalid?
  end

  test "title should not be too short" do
    @article.title = "a"
    assert_not @article.valid?
  end

  test "title should not be too long" do
    @article.title = "a" * 81
    assert_not @article.valid?
  end

  test "content should be present" do
    @article.content = ""
    assert_not @article.valid?
  end

  test "content should not be too short" do
    @article.content = ""
    assert_not @article.valid?
  end

  test "content should not be too long" do
    @article.content = "a" * 3601
    assert_not @article.valid?
  end
end