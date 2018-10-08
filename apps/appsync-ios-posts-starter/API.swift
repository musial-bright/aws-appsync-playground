//  This file was automatically generated and should not be edited.

import AWSAppSync

public final class AddCommentMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddComment($id: ID!, $author: String!, $comment: String!) {\n  addComment(id: $id, author: $author, comment: $comment) {\n    __typename\n    id\n    author\n    title\n    content\n    url\n    ups\n    downs\n    version\n    tags\n    comments {\n      __typename\n      author\n      comment\n    }\n    owner\n  }\n}"

  public var id: GraphQLID
  public var author: String
  public var comment: String

  public init(id: GraphQLID, author: String, comment: String) {
    self.id = id
    self.author = author
    self.comment = comment
  }

  public var variables: GraphQLMap? {
    return ["id": id, "author": author, "comment": comment]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addComment", arguments: ["id": GraphQLVariable("id"), "author": GraphQLVariable("author"), "comment": GraphQLVariable("comment")], type: .object(AddComment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addComment: AddComment? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "addComment": addComment.flatMap { $0.snapshot }])
    }

    public var addComment: AddComment? {
      get {
        return (snapshot["addComment"] as? Snapshot).flatMap { AddComment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "addComment")
      }
    }

    public struct AddComment: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
        GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String? {
        get {
          return snapshot["author"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      public var ups: Int {
        get {
          return snapshot["ups"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ups")
        }
      }

      public var downs: Int {
        get {
          return snapshot["downs"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "downs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var tags: [String]? {
        get {
          return snapshot["tags"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tags")
        }
      }

      public var comments: [Comment]? {
        get {
          return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("comment", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(author: String, comment: String) {
          self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return snapshot["author"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var comment: String {
          get {
            return snapshot["comment"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "comment")
          }
        }
      }
    }
  }
}

public final class AddTagMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddTag($id: ID!, $tag: String!) {\n  addTag(id: $id, tag: $tag) {\n    __typename\n    id\n    author\n    title\n    content\n    url\n    ups\n    downs\n    version\n    tags\n    comments {\n      __typename\n      author\n      comment\n    }\n    owner\n  }\n}"

  public var id: GraphQLID
  public var tag: String

  public init(id: GraphQLID, tag: String) {
    self.id = id
    self.tag = tag
  }

  public var variables: GraphQLMap? {
    return ["id": id, "tag": tag]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addTag", arguments: ["id": GraphQLVariable("id"), "tag": GraphQLVariable("tag")], type: .object(AddTag.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addTag: AddTag? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "addTag": addTag.flatMap { $0.snapshot }])
    }

    public var addTag: AddTag? {
      get {
        return (snapshot["addTag"] as? Snapshot).flatMap { AddTag(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "addTag")
      }
    }

    public struct AddTag: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
        GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String? {
        get {
          return snapshot["author"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      public var ups: Int {
        get {
          return snapshot["ups"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ups")
        }
      }

      public var downs: Int {
        get {
          return snapshot["downs"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "downs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var tags: [String]? {
        get {
          return snapshot["tags"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tags")
        }
      }

      public var comments: [Comment]? {
        get {
          return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("comment", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(author: String, comment: String) {
          self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return snapshot["author"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var comment: String {
          get {
            return snapshot["comment"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "comment")
          }
        }
      }
    }
  }
}

public final class RemoveTagMutation: GraphQLMutation {
  public static let operationString =
    "mutation RemoveTag($id: ID!, $tag: String!) {\n  removeTag(id: $id, tag: $tag) {\n    __typename\n    id\n    author\n    title\n    content\n    url\n    ups\n    downs\n    version\n    tags\n    comments {\n      __typename\n      author\n      comment\n    }\n    owner\n  }\n}"

  public var id: GraphQLID
  public var tag: String

  public init(id: GraphQLID, tag: String) {
    self.id = id
    self.tag = tag
  }

  public var variables: GraphQLMap? {
    return ["id": id, "tag": tag]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("removeTag", arguments: ["id": GraphQLVariable("id"), "tag": GraphQLVariable("tag")], type: .object(RemoveTag.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(removeTag: RemoveTag? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "removeTag": removeTag.flatMap { $0.snapshot }])
    }

    public var removeTag: RemoveTag? {
      get {
        return (snapshot["removeTag"] as? Snapshot).flatMap { RemoveTag(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "removeTag")
      }
    }

    public struct RemoveTag: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
        GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String? {
        get {
          return snapshot["author"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      public var ups: Int {
        get {
          return snapshot["ups"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ups")
        }
      }

      public var downs: Int {
        get {
          return snapshot["downs"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "downs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var tags: [String]? {
        get {
          return snapshot["tags"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tags")
        }
      }

      public var comments: [Comment]? {
        get {
          return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("comment", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(author: String, comment: String) {
          self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return snapshot["author"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var comment: String {
          get {
            return snapshot["comment"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "comment")
          }
        }
      }
    }
  }
}

public final class DeletePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePost($id: ID!, $expectedVersion: Int) {\n  deletePost(id: $id, expectedVersion: $expectedVersion) {\n    __typename\n    id\n    author\n    title\n    content\n    url\n    ups\n    downs\n    version\n    tags\n    comments {\n      __typename\n      author\n      comment\n    }\n    owner\n  }\n}"

  public var id: GraphQLID
  public var expectedVersion: Int?

  public init(id: GraphQLID, expectedVersion: Int? = nil) {
    self.id = id
    self.expectedVersion = expectedVersion
  }

  public var variables: GraphQLMap? {
    return ["id": id, "expectedVersion": expectedVersion]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePost", arguments: ["id": GraphQLVariable("id"), "expectedVersion": GraphQLVariable("expectedVersion")], type: .object(DeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePost: DeletePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deletePost": deletePost.flatMap { $0.snapshot }])
    }

    public var deletePost: DeletePost? {
      get {
        return (snapshot["deletePost"] as? Snapshot).flatMap { DeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deletePost")
      }
    }

    public struct DeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
        GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String? {
        get {
          return snapshot["author"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      public var ups: Int {
        get {
          return snapshot["ups"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ups")
        }
      }

      public var downs: Int {
        get {
          return snapshot["downs"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "downs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var tags: [String]? {
        get {
          return snapshot["tags"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tags")
        }
      }

      public var comments: [Comment]? {
        get {
          return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("comment", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(author: String, comment: String) {
          self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return snapshot["author"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var comment: String {
          get {
            return snapshot["comment"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "comment")
          }
        }
      }
    }
  }
}

public final class UpvotePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpvotePost($id: ID!) {\n  upvotePost(id: $id) {\n    __typename\n    id\n    author\n    title\n    content\n    url\n    ups\n    downs\n    version\n    tags\n    comments {\n      __typename\n      author\n      comment\n    }\n    owner\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("upvotePost", arguments: ["id": GraphQLVariable("id")], type: .object(UpvotePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(upvotePost: UpvotePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "upvotePost": upvotePost.flatMap { $0.snapshot }])
    }

    public var upvotePost: UpvotePost? {
      get {
        return (snapshot["upvotePost"] as? Snapshot).flatMap { UpvotePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "upvotePost")
      }
    }

    public struct UpvotePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
        GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String? {
        get {
          return snapshot["author"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      public var ups: Int {
        get {
          return snapshot["ups"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ups")
        }
      }

      public var downs: Int {
        get {
          return snapshot["downs"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "downs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var tags: [String]? {
        get {
          return snapshot["tags"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tags")
        }
      }

      public var comments: [Comment]? {
        get {
          return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("comment", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(author: String, comment: String) {
          self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return snapshot["author"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var comment: String {
          get {
            return snapshot["comment"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "comment")
          }
        }
      }
    }
  }
}

public final class DownvotePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation DownvotePost($id: ID!) {\n  downvotePost(id: $id) {\n    __typename\n    id\n    author\n    title\n    content\n    url\n    ups\n    downs\n    version\n    tags\n    comments {\n      __typename\n      author\n      comment\n    }\n    owner\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("downvotePost", arguments: ["id": GraphQLVariable("id")], type: .object(DownvotePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(downvotePost: DownvotePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "downvotePost": downvotePost.flatMap { $0.snapshot }])
    }

    public var downvotePost: DownvotePost? {
      get {
        return (snapshot["downvotePost"] as? Snapshot).flatMap { DownvotePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "downvotePost")
      }
    }

    public struct DownvotePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
        GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String? {
        get {
          return snapshot["author"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      public var ups: Int {
        get {
          return snapshot["ups"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ups")
        }
      }

      public var downs: Int {
        get {
          return snapshot["downs"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "downs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var tags: [String]? {
        get {
          return snapshot["tags"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tags")
        }
      }

      public var comments: [Comment]? {
        get {
          return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("comment", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(author: String, comment: String) {
          self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return snapshot["author"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var comment: String {
          get {
            return snapshot["comment"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "comment")
          }
        }
      }
    }
  }
}

public final class UpdatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdatePost($id: ID!, $author: String, $title: String, $content: String, $url: String, $expectedVersion: Int!) {\n  updatePost(id: $id, author: $author, title: $title, content: $content, url: $url, expectedVersion: $expectedVersion) {\n    __typename\n    id\n    author\n    title\n    content\n    url\n    ups\n    downs\n    version\n    tags\n    comments {\n      __typename\n      author\n      comment\n    }\n    owner\n  }\n}"

  public var id: GraphQLID
  public var author: String?
  public var title: String?
  public var content: String?
  public var url: String?
  public var expectedVersion: Int

  public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, expectedVersion: Int) {
    self.id = id
    self.author = author
    self.title = title
    self.content = content
    self.url = url
    self.expectedVersion = expectedVersion
  }

  public var variables: GraphQLMap? {
    return ["id": id, "author": author, "title": title, "content": content, "url": url, "expectedVersion": expectedVersion]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePost", arguments: ["id": GraphQLVariable("id"), "author": GraphQLVariable("author"), "title": GraphQLVariable("title"), "content": GraphQLVariable("content"), "url": GraphQLVariable("url"), "expectedVersion": GraphQLVariable("expectedVersion")], type: .object(UpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updatePost: UpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updatePost": updatePost.flatMap { $0.snapshot }])
    }

    public var updatePost: UpdatePost? {
      get {
        return (snapshot["updatePost"] as? Snapshot).flatMap { UpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updatePost")
      }
    }

    public struct UpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
        GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String? {
        get {
          return snapshot["author"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      public var ups: Int {
        get {
          return snapshot["ups"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ups")
        }
      }

      public var downs: Int {
        get {
          return snapshot["downs"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "downs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var tags: [String]? {
        get {
          return snapshot["tags"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tags")
        }
      }

      public var comments: [Comment]? {
        get {
          return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("comment", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(author: String, comment: String) {
          self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return snapshot["author"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var comment: String {
          get {
            return snapshot["comment"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "comment")
          }
        }
      }
    }
  }
}

public final class AddPostMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddPost($id: ID!, $author: String!, $title: String!, $content: String!, $url: String!) {\n  addPost(id: $id, author: $author, title: $title, content: $content, url: $url) {\n    __typename\n    id\n    author\n    title\n    content\n    url\n    ups\n    downs\n    version\n    tags\n    comments {\n      __typename\n      author\n      comment\n    }\n    owner\n  }\n}"

  public var id: GraphQLID
  public var author: String
  public var title: String
  public var content: String
  public var url: String

  public init(id: GraphQLID, author: String, title: String, content: String, url: String) {
    self.id = id
    self.author = author
    self.title = title
    self.content = content
    self.url = url
  }

  public var variables: GraphQLMap? {
    return ["id": id, "author": author, "title": title, "content": content, "url": url]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addPost", arguments: ["id": GraphQLVariable("id"), "author": GraphQLVariable("author"), "title": GraphQLVariable("title"), "content": GraphQLVariable("content"), "url": GraphQLVariable("url")], type: .nonNull(.object(AddPost.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addPost: AddPost) {
      self.init(snapshot: ["__typename": "Mutation", "addPost": addPost.snapshot])
    }

    public var addPost: AddPost {
      get {
        return AddPost(snapshot: snapshot["addPost"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "addPost")
      }
    }

    public struct AddPost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
        GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String? {
        get {
          return snapshot["author"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      public var ups: Int {
        get {
          return snapshot["ups"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ups")
        }
      }

      public var downs: Int {
        get {
          return snapshot["downs"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "downs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var tags: [String]? {
        get {
          return snapshot["tags"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tags")
        }
      }

      public var comments: [Comment]? {
        get {
          return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("comment", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(author: String, comment: String) {
          self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return snapshot["author"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var comment: String {
          get {
            return snapshot["comment"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "comment")
          }
        }
      }
    }
  }
}

public final class GetEquipmentQuery: GraphQLQuery {
  public static let operationString =
    "query GetEquipment($id: ID) {\n  getEquipment(id: $id) {\n    __typename\n    id\n    name\n  }\n}"

  public var id: GraphQLID?

  public init(id: GraphQLID? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getEquipment", arguments: ["id": GraphQLVariable("id")], type: .object(GetEquipment.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getEquipment: GetEquipment? = nil) {
      self.init(snapshot: ["__typename": "Query", "getEquipment": getEquipment.flatMap { $0.snapshot }])
    }

    public var getEquipment: GetEquipment? {
      get {
        return (snapshot["getEquipment"] as? Snapshot).flatMap { GetEquipment(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getEquipment")
      }
    }

    public struct GetEquipment: GraphQLSelectionSet {
      public static let possibleTypes = ["Equipment"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String) {
        self.init(snapshot: ["__typename": "Equipment", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class AllPostsByTagQuery: GraphQLQuery {
  public static let operationString =
    "query AllPostsByTag($tag: String!, $count: Int, $nextToken: String) {\n  allPostsByTag(tag: $tag, count: $count, nextToken: $nextToken) {\n    __typename\n    posts {\n      __typename\n      id\n      author\n      title\n      content\n      url\n      ups\n      downs\n      version\n      tags\n      comments {\n        __typename\n        author\n        comment\n      }\n      owner\n    }\n    nextToken\n  }\n}"

  public var tag: String
  public var count: Int?
  public var nextToken: String?

  public init(tag: String, count: Int? = nil, nextToken: String? = nil) {
    self.tag = tag
    self.count = count
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["tag": tag, "count": count, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allPostsByTag", arguments: ["tag": GraphQLVariable("tag"), "count": GraphQLVariable("count"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(AllPostsByTag.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(allPostsByTag: AllPostsByTag) {
      self.init(snapshot: ["__typename": "Query", "allPostsByTag": allPostsByTag.snapshot])
    }

    public var allPostsByTag: AllPostsByTag {
      get {
        return AllPostsByTag(snapshot: snapshot["allPostsByTag"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "allPostsByTag")
      }
    }

    public struct AllPostsByTag: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedPosts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .nonNull(.list(.nonNull(.object(Post.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(posts: [Post], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "PaginatedPosts", "posts": posts.map { $0.snapshot }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var posts: [Post] {
        get {
          return (snapshot["posts"] as! [Snapshot]).map { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "posts")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("author", type: .scalar(String.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
          GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var author: String? {
          get {
            return snapshot["author"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        public var ups: Int {
          get {
            return snapshot["ups"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "ups")
          }
        }

        public var downs: Int {
          get {
            return snapshot["downs"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "downs")
          }
        }

        public var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public var tags: [String]? {
          get {
            return snapshot["tags"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "tags")
          }
        }

        public var comments: [Comment]? {
          get {
            return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("author", type: .nonNull(.scalar(String.self))),
            GraphQLField("comment", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(author: String, comment: String) {
            self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var author: String {
            get {
              return snapshot["author"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "author")
            }
          }

          public var comment: String {
            get {
              return snapshot["comment"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "comment")
            }
          }
        }
      }
    }
  }
}

public final class AllPostsByAuthorQuery: GraphQLQuery {
  public static let operationString =
    "query AllPostsByAuthor($author: String!, $count: Int, $nextToken: String) {\n  allPostsByAuthor(author: $author, count: $count, nextToken: $nextToken) {\n    __typename\n    posts {\n      __typename\n      id\n      author\n      title\n      content\n      url\n      ups\n      downs\n      version\n      tags\n      comments {\n        __typename\n        author\n        comment\n      }\n      owner\n    }\n    nextToken\n  }\n}"

  public var author: String
  public var count: Int?
  public var nextToken: String?

  public init(author: String, count: Int? = nil, nextToken: String? = nil) {
    self.author = author
    self.count = count
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["author": author, "count": count, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allPostsByAuthor", arguments: ["author": GraphQLVariable("author"), "count": GraphQLVariable("count"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(AllPostsByAuthor.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(allPostsByAuthor: AllPostsByAuthor) {
      self.init(snapshot: ["__typename": "Query", "allPostsByAuthor": allPostsByAuthor.snapshot])
    }

    public var allPostsByAuthor: AllPostsByAuthor {
      get {
        return AllPostsByAuthor(snapshot: snapshot["allPostsByAuthor"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "allPostsByAuthor")
      }
    }

    public struct AllPostsByAuthor: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedPosts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .nonNull(.list(.nonNull(.object(Post.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(posts: [Post], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "PaginatedPosts", "posts": posts.map { $0.snapshot }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var posts: [Post] {
        get {
          return (snapshot["posts"] as! [Snapshot]).map { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "posts")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("author", type: .scalar(String.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
          GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var author: String? {
          get {
            return snapshot["author"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        public var ups: Int {
          get {
            return snapshot["ups"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "ups")
          }
        }

        public var downs: Int {
          get {
            return snapshot["downs"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "downs")
          }
        }

        public var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public var tags: [String]? {
          get {
            return snapshot["tags"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "tags")
          }
        }

        public var comments: [Comment]? {
          get {
            return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("author", type: .nonNull(.scalar(String.self))),
            GraphQLField("comment", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(author: String, comment: String) {
            self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var author: String {
            get {
              return snapshot["author"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "author")
            }
          }

          public var comment: String {
            get {
              return snapshot["comment"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "comment")
            }
          }
        }
      }
    }
  }
}

public final class AllPostQuery: GraphQLQuery {
  public static let operationString =
    "query AllPost($count: Int, $nextToken: String) {\n  allPost(count: $count, nextToken: $nextToken) {\n    __typename\n    posts {\n      __typename\n      id\n      author\n      title\n      content\n      url\n      ups\n      downs\n      version\n      tags\n      comments {\n        __typename\n        author\n        comment\n      }\n      owner\n    }\n    nextToken\n  }\n}"

  public var count: Int?
  public var nextToken: String?

  public init(count: Int? = nil, nextToken: String? = nil) {
    self.count = count
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["count": count, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allPost", arguments: ["count": GraphQLVariable("count"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(AllPost.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(allPost: AllPost) {
      self.init(snapshot: ["__typename": "Query", "allPost": allPost.snapshot])
    }

    public var allPost: AllPost {
      get {
        return AllPost(snapshot: snapshot["allPost"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "allPost")
      }
    }

    public struct AllPost: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedPosts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("posts", type: .nonNull(.list(.nonNull(.object(Post.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(posts: [Post], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "PaginatedPosts", "posts": posts.map { $0.snapshot }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var posts: [Post] {
        get {
          return (snapshot["posts"] as! [Snapshot]).map { Post(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "posts")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("author", type: .scalar(String.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
          GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
          GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
          GraphQLField("owner", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
          self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var author: String? {
          get {
            return snapshot["author"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        public var ups: Int {
          get {
            return snapshot["ups"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "ups")
          }
        }

        public var downs: Int {
          get {
            return snapshot["downs"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "downs")
          }
        }

        public var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public var tags: [String]? {
          get {
            return snapshot["tags"] as? [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "tags")
          }
        }

        public var comments: [Comment]? {
          get {
            return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["Comment"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("author", type: .nonNull(.scalar(String.self))),
            GraphQLField("comment", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(author: String, comment: String) {
            self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var author: String {
            get {
              return snapshot["author"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "author")
            }
          }

          public var comment: String {
            get {
              return snapshot["comment"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "comment")
            }
          }
        }
      }
    }
  }
}

public final class GetPostQuery: GraphQLQuery {
  public static let operationString =
    "query GetPost($id: ID) {\n  getPost(id: $id) {\n    __typename\n    id\n    author\n    title\n    content\n    url\n    ups\n    downs\n    version\n    tags\n    comments {\n      __typename\n      author\n      comment\n    }\n    owner\n  }\n}"

  public var id: GraphQLID?

  public init(id: GraphQLID? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPost", arguments: ["id": GraphQLVariable("id")], type: .object(GetPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPost: GetPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "getPost": getPost.flatMap { $0.snapshot }])
    }

    public var getPost: GetPost? {
      get {
        return (snapshot["getPost"] as? Snapshot).flatMap { GetPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getPost")
      }
    }

    public struct GetPost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("author", type: .scalar(String.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("ups", type: .nonNull(.scalar(Int.self))),
        GraphQLField("downs", type: .nonNull(.scalar(Int.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("tags", type: .list(.nonNull(.scalar(String.self)))),
        GraphQLField("comments", type: .list(.nonNull(.object(Comment.selections)))),
        GraphQLField("owner", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, author: String? = nil, title: String? = nil, content: String? = nil, url: String? = nil, ups: Int, downs: Int, version: Int, tags: [String]? = nil, comments: [Comment]? = nil, owner: String? = nil) {
        self.init(snapshot: ["__typename": "Post", "id": id, "author": author, "title": title, "content": content, "url": url, "ups": ups, "downs": downs, "version": version, "tags": tags, "comments": comments.flatMap { $0.map { $0.snapshot } }, "owner": owner])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String? {
        get {
          return snapshot["author"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      public var ups: Int {
        get {
          return snapshot["ups"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "ups")
        }
      }

      public var downs: Int {
        get {
          return snapshot["downs"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "downs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var tags: [String]? {
        get {
          return snapshot["tags"] as? [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "tags")
        }
      }

      public var comments: [Comment]? {
        get {
          return (snapshot["comments"] as? [Snapshot]).flatMap { $0.map { Comment(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "comments")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Comment"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("comment", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(author: String, comment: String) {
          self.init(snapshot: ["__typename": "Comment", "author": author, "comment": comment])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return snapshot["author"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "author")
          }
        }

        public var comment: String {
          get {
            return snapshot["comment"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "comment")
          }
        }
      }
    }
  }
}