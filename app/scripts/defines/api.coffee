LOC = location
IsDebug = LOC["port"] is "9000"

BASE_API_PATH = "/api/index.php"

API = 
  user: "/user/usersession/user"
  userInfo: "/user/userinfo/user/id" # 1
  ask: "/ask/askinfo/ask"
  answer: "/ask/askinfo/answer"
  news: "/feed/feedinfo/feeds"
  notice: "/common/message/msgcount"

  myask: "/user/me/myask"
  myanswer: "/user/me/myanswer"
  mylove: "/user/me/mylove"

  askme: "/ask/askinfo/asks"
  follow: "/user/friend/follow"
  unfollow: "/user/friend/unfollow"
  loveanswer: "/ask/askinfo/loveanswer"
  answerme: "/feed/feedinfo/answerme"
  comment: "/ask/askinfo/comment"
  getComment: "/ask/askinfo/comments"
  loveme: "/user/feedinfo/loveanswers"
  commentme: "/feed/feedinfo/commentme"
  lovemefeed: "/feed/feedinfo/loveme"

  friendAsk: "/user/friend/asks"
  friendAns: "/user/friend/answers"
  frinedLove: "/user/friend/loveanswers"

  friendFollow: "/user/friend/follows"
  friendFans: "/user/friend/followeds"

  askinfo: "/ask/askinfo/ask"
  askanswers: "/ask/askinfo/answers"

  reg: "/user/userinfo/user"

  squareask: "/ask/askinfo/answers"

  squareusers: "/user/userinfo/users"

  aboutsite: "/common/info/siteinfo"



if IsDebug
  BASE_API_PATH = "/data"

  API = 
    user: "/user.json"
    userInfo: "/user-info.json"
    ask: "/ask.json"
    answer: "/answer.json"
    news: "/news.json"

    myask: "/myask.json"
    myanswer: "/myanswer.json"
    mylove: "/mylove.json"

    notice: "/msgcount.json"
    askme: "/askme.json"
    follow: "/follow.json"
    unfollow: "/unfollow.json"
    loveanswer: "/loveanswer.json"
    answerme: "/answerme.json"
    comment: "/comment.json"
    getComment: "/comments_list.json"
    loveme: "/loveanswers.json"
    commentme: "/commentme.json"
    lovemefeed: "/loveme.json"

    friendAsk: "/myask.json"
    friendAns: "/myanswer.json"
    frinedLove: "/mylove.json"

    friendFollow: "/follows.json"
    friendFans: "/follows.json"

    askinfo: "/askinfo.json"
    askanswers: "/askanswers.json"

    reg: "/reg.json"

    squareask: "/squareask.json"

    squareusers: "/squareusers.json"

    aboutsite: "/siteinfo.json"

API[api] = "#{BASE_API_PATH}#{API[api]}" for api of API