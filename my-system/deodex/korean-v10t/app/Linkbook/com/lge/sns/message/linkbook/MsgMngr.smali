.class public Lcom/lge/sns/message/linkbook/MsgMngr;
.super Lcom/lge/sns/common/BaseFacade;
.source "MsgMngr.java"

# interfaces
.implements Lcom/lge/sns/message/IMessageFacade;


# static fields
.field private static final APP_TAG:Ljava/lang/String; = "SNS"

.field private static final DEFAULT_PAGENUM:I = 0x1

.field private static final DEFAULT_PAGESIZE:I = 0x2710

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "updated"

.field private static final PARAM_MESSAGE_ID:Ljava/lang/String; = "{message_id}"

.field private static final PARAM_SNS_ID:Ljava/lang/String; = "{sns_id}"

.field private static final PARAM_THREAD_ID:Ljava/lang/String; = "{thread_id}"

.field private static final PARAM_USER_ID:Ljava/lang/String; = "{user_id}"

.field private static final SELECT_STRING_1:Ljava/lang/String; = "(sns_id=\"{sns_id}\")"

.field private static final SELECT_STRING_2:Ljava/lang/String; = "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\")"

.field private static final SELECT_STRING_3:Ljava/lang/String; = "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\") And (thread_id=\"{thread_id}\")"

.field private static final SELECT_STRING_4:Ljava/lang/String; = "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\") And (thread_id=\"{thread_id}\") And (message_id=\"{message_id}\")"

.field public static final TWITTER_SNS_ID:Ljava/lang/String; = "TW"

.field private static m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

.field private static myReader:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    new-instance v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    invoke-direct {v0}, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;-><init>()V

    sput-object v0, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/sns/message/linkbook/MsgMngr;->myReader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const-string v4, "getXMLReader() - Exception"

    const-string v3, "SNS"

    .line 111
    invoke-direct {p0, p1}, Lcom/lge/sns/common/BaseFacade;-><init>(Landroid/content/Context;)V

    .line 114
    :try_start_7
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    sput-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->myReader:Lorg/xml/sax/XMLReader;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    .line 130
    :goto_15
    return-void

    .line 115
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 116
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SNS"

    const-string v2, "getXMLReader() - Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :try_start_1f
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    sput-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->myReader:Lorg/xml/sax/XMLReader;
    :try_end_2d
    .catch Lorg/xml/sax/SAXException; {:try_start_1f .. :try_end_2d} :catch_2e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1f .. :try_end_2d} :catch_38
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1f .. :try_end_2d} :catch_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_4c

    goto :goto_15

    .line 119
    :catch_2e
    move-exception v2

    move-object v1, v2

    .line 120
    .local v1, e1:Lorg/xml/sax/SAXException;
    const-string v2, "SNS"

    const-string v2, "getXMLReader() - SAXException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 121
    .end local v1           #e1:Lorg/xml/sax/SAXException;
    :catch_38
    move-exception v2

    move-object v1, v2

    .line 122
    .local v1, e1:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v2, "SNS"

    const-string v2, "getXMLReader() - ParserConfigurationException"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 123
    .end local v1           #e1:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_42
    move-exception v2

    move-object v1, v2

    .line 124
    .local v1, e1:Ljavax/xml/parsers/FactoryConfigurationError;
    const-string v2, "SNS"

    const-string v2, "getXMLReader() - FactoryConfigurationError"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 125
    .end local v1           #e1:Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_4c
    move-exception v2

    move-object v1, v2

    .line 126
    .local v1, e1:Ljava/lang/Exception;
    const-string v2, "SNS"

    const-string v2, "getXMLReader() - Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private applySettingsToMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "maxMessageCount"

    .prologue
    const/4 v2, 0x0

    .line 243
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    const/4 v0, 0x1

    if-ge p4, v0, :cond_b

    .line 268
    :cond_a
    :goto_a
    return-void

    .line 245
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessageCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lt v0, p4, :cond_a

    .line 246
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const-string v5, "updated"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a

    .line 257
    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 258
    invoke-direct {p0, v6}, Lcom/lge/sns/message/linkbook/MsgMngr;->createMessageByCursor(Landroid/database/Cursor;)Lcom/lge/sns/message/Message;

    move-result-object v7

    .line 259
    .local v7, message:Lcom/lge/sns/message/Message;
    if-eqz v7, :cond_33

    .line 260
    invoke-virtual {p0, v7}, Lcom/lge/sns/message/linkbook/MsgMngr;->deleteMessage(Lcom/lge/sns/message/Message;)V
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_37

    .line 264
    .end local v7           #message:Lcom/lge/sns/message/Message;
    :cond_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_37
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private applySettingsToMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "mills"

    .prologue
    const/4 v2, 0x0

    .line 207
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_e

    .line 230
    :cond_d
    :goto_d
    return-void

    .line 209
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " And (updated<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_d

    .line 220
    :cond_39
    :goto_39
    :try_start_39
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 221
    invoke-direct {p0, v6}, Lcom/lge/sns/message/linkbook/MsgMngr;->createMessageByCursor(Landroid/database/Cursor;)Lcom/lge/sns/message/Message;

    move-result-object v7

    .line 222
    .local v7, message:Lcom/lge/sns/message/Message;
    if-eqz v7, :cond_39

    .line 223
    invoke-virtual {p0, v7}, Lcom/lge/sns/message/linkbook/MsgMngr;->deleteMessage(Lcom/lge/sns/message/Message;)V
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_49

    goto :goto_39

    .line 227
    .end local v7           #message:Lcom/lge/sns/message/Message;
    :catchall_49
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_d
.end method

.method private applySettingsToThread(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "maxMessageThread"

    .prologue
    const/4 v2, 0x0

    .line 307
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    if-ge p3, v0, :cond_9

    .line 330
    :cond_8
    :goto_8
    return-void

    .line 309
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/message/linkbook/MsgMngr;->getThreadCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lt v0, p3, :cond_8

    .line 310
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2, v2}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "updated"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 317
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 319
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 320
    invoke-direct {p0, v6}, Lcom/lge/sns/message/linkbook/MsgMngr;->createThreadByCursor(Landroid/database/Cursor;)Lcom/lge/sns/message/MessageThread;

    move-result-object v7

    .line 321
    .local v7, thread:Lcom/lge/sns/message/MessageThread;
    if-eqz v7, :cond_31

    .line 322
    invoke-virtual {p0, v7}, Lcom/lge/sns/message/linkbook/MsgMngr;->deleteThread(Lcom/lge/sns/message/MessageThread;)V
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_35

    .line 326
    .end local v7           #thread:Lcom/lge/sns/message/MessageThread;
    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_35
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private applySettingsToThread(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "mills"

    .prologue
    const/4 v2, 0x0

    .line 340
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_c

    .line 362
    :cond_b
    :goto_b
    return-void

    .line 342
    :cond_c
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " And (updated<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 349
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_b

    .line 351
    :cond_37
    :goto_37
    :try_start_37
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 352
    invoke-direct {p0, v6}, Lcom/lge/sns/message/linkbook/MsgMngr;->createThreadByCursor(Landroid/database/Cursor;)Lcom/lge/sns/message/MessageThread;

    move-result-object v7

    .line 354
    .local v7, thread:Lcom/lge/sns/message/MessageThread;
    if-eqz v7, :cond_37

    .line 355
    invoke-virtual {p0, v7}, Lcom/lge/sns/message/linkbook/MsgMngr;->deleteThread(Lcom/lge/sns/message/MessageThread;)V
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_47

    goto :goto_37

    .line 359
    .end local v7           #thread:Lcom/lge/sns/message/MessageThread;
    :catchall_47
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_b
.end method

.method private createMessageByCursor(Landroid/database/Cursor;)Lcom/lge/sns/message/Message;
    .registers 16
    .parameter "cursor"

    .prologue
    .line 371
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 373
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/lge/sns/message/Message;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/16 v11, 0xa

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/16 v13, 0xb

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-direct/range {v0 .. v13}, Lcom/lge/sns/message/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    goto :goto_3
.end method

.method private createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .parameter "extra"

    .prologue
    const-string v4, "{user_id}"

    const-string v3, "{sns_id}"

    const-string v2, "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\")"

    .line 395
    if-eqz p3, :cond_28

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\")"

    const-string v1, "{sns_id}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{user_id}"

    invoke-virtual {v1, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_27
    return-object v0

    :cond_28
    const-string v0, "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\")"

    const-string v0, "{sns_id}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{user_id}"

    invoke-virtual {v0, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method private createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "extra"

    .prologue
    const-string v5, "{user_id}"

    const-string v4, "{thread_id}"

    const-string v3, "{sns_id}"

    const-string v2, "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\") And (thread_id=\"{thread_id}\")"

    .line 410
    if-eqz p4, :cond_30

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\") And (thread_id=\"{thread_id}\")"

    const-string v1, "{sns_id}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{user_id}"

    invoke-virtual {v1, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{thread_id}"

    invoke-virtual {v1, v4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_2f
    return-object v0

    :cond_30
    const-string v0, "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\") And (thread_id=\"{thread_id}\")"

    const-string v0, "{sns_id}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{user_id}"

    invoke-virtual {v0, v5, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{thread_id}"

    invoke-virtual {v0, v4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method private createSelectStr4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "messageId"
    .parameter "extra"

    .prologue
    const-string v6, "{user_id}"

    const-string v5, "{thread_id}"

    const-string v4, "{sns_id}"

    const-string v3, "{message_id}"

    const-string v2, "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\") And (thread_id=\"{thread_id}\") And (message_id=\"{message_id}\")"

    .line 427
    if-eqz p5, :cond_38

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\") And (thread_id=\"{thread_id}\") And (message_id=\"{message_id}\")"

    const-string v1, "{sns_id}"

    invoke-virtual {v2, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{user_id}"

    invoke-virtual {v1, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{thread_id}"

    invoke-virtual {v1, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{message_id}"

    invoke-virtual {v1, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_37
    return-object v0

    :cond_38
    const-string v0, "(sns_id=\"{sns_id}\") And (user_id=\"{user_id}\") And (thread_id=\"{thread_id}\") And (message_id=\"{message_id}\")"

    const-string v0, "{sns_id}"

    invoke-virtual {v2, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{user_id}"

    invoke-virtual {v0, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{thread_id}"

    invoke-virtual {v0, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{message_id}"

    invoke-virtual {v0, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method private createThreadByCursor(Landroid/database/Cursor;)Lcom/lge/sns/message/MessageThread;
    .registers 15
    .parameter "cursor"

    .prologue
    .line 442
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 444
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/lge/sns/message/MessageThread;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v10, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v12, 0xa

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-direct/range {v0 .. v12}, Lcom/lge/sns/message/MessageThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    goto :goto_3
.end method

.method private deleteMessageFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "messageId"

    .prologue
    const/4 v5, 0x0

    .line 512
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    if-nez p4, :cond_a

    .line 519
    :cond_9
    :goto_9
    return-void

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 514
    invoke-direct/range {v0 .. v5}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, selection:Ljava/lang/String;
    monitor-enter p0

    .line 516
    :try_start_14
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->RECIPIENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 518
    monitor-exit p0

    goto :goto_9

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private deleteThreadFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    .line 549
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_8

    .line 557
    :cond_7
    :goto_7
    return-void

    .line 551
    :cond_8
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, selection:Ljava/lang/String;
    monitor-enter p0

    .line 553
    :try_start_d
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 555
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->RECIPIENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 556
    monitor-exit p0

    goto :goto_7

    :catchall_2d
    move-exception v1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private notifyMessageAdded(Lcom/lge/sns/message/Message;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 1014
    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    monitor-enter v2

    .line 1015
    :try_start_3
    sget-object v3, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;

    .line 1016
    .local v1, listener:Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;
    invoke-interface {v1, p1}, Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;->onMessageAdded(Lcom/lge/sns/message/Message;)V

    goto :goto_9

    .line 1018
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 1019
    return-void
.end method

.method private notifyMessageRemoved(Lcom/lge/sns/message/Message;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 1026
    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    monitor-enter v2

    .line 1027
    :try_start_3
    sget-object v3, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;

    .line 1028
    .local v1, listener:Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;
    invoke-interface {v1, p1}, Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;->onMessageRemoved(Lcom/lge/sns/message/Message;)V

    goto :goto_9

    .line 1030
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 1031
    return-void
.end method

.method private notifyMessageUpdated(Lcom/lge/sns/message/Message;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 1038
    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    monitor-enter v2

    .line 1039
    :try_start_3
    sget-object v3, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;

    .line 1040
    .local v1, listener:Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;
    invoke-interface {v1, p1}, Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;->onMessageUpdated(Lcom/lge/sns/message/Message;)V

    goto :goto_9

    .line 1042
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 1043
    return-void
.end method

.method private notifyThreadAdded(Lcom/lge/sns/message/MessageThread;)V
    .registers 6
    .parameter "thread"

    .prologue
    .line 1050
    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    monitor-enter v2

    .line 1051
    :try_start_3
    sget-object v3, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;

    .line 1052
    .local v1, listener:Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;
    invoke-interface {v1, p1}, Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;->onThreadAdded(Lcom/lge/sns/message/MessageThread;)V

    goto :goto_9

    .line 1054
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 1055
    return-void
.end method

.method private notifyThreadRemoved(Lcom/lge/sns/message/MessageThread;)V
    .registers 6
    .parameter "thread"

    .prologue
    .line 1062
    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    monitor-enter v2

    .line 1063
    :try_start_3
    sget-object v3, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;

    .line 1064
    .local v1, listener:Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;
    invoke-interface {v1, p1}, Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;->onThreadRemoved(Lcom/lge/sns/message/MessageThread;)V

    goto :goto_9

    .line 1066
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 1067
    return-void
.end method

.method private notifyThreadUpdated(Lcom/lge/sns/message/MessageThread;)V
    .registers 6
    .parameter "thread"

    .prologue
    .line 1074
    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    monitor-enter v2

    .line 1075
    :try_start_3
    sget-object v3, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;

    .line 1076
    .local v1, listener:Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;
    invoke-interface {v1, p1}, Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;->onThreadUpdated(Lcom/lge/sns/message/MessageThread;)V

    goto :goto_9

    .line 1078
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 1079
    return-void
.end method


# virtual methods
.method public addMessageUpdateListener(Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 140
    if-nez p1, :cond_3

    .line 147
    :goto_2
    return-void

    .line 143
    :cond_3
    sget-object v0, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    monitor-enter v0

    .line 144
    :try_start_6
    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 145
    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_14
    monitor-exit v0

    goto :goto_2

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public addThreadUpdateListener(Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 157
    if-nez p1, :cond_3

    .line 164
    :goto_2
    return-void

    .line 160
    :cond_3
    sget-object v0, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    monitor-enter v0

    .line 161
    :try_start_6
    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 162
    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_14
    monitor-exit v0

    goto :goto_2

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public applySettingsToMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"

    .prologue
    .line 175
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    .line 194
    :cond_6
    :goto_6
    return-void

    .line 177
    :cond_7
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v9

    .line 179
    .local v9, setting:Lcom/lge/sns/setting/ISettingFacade;
    if-eqz v9, :cond_6

    .line 181
    invoke-interface {v9}, Lcom/lge/sns/setting/ISettingFacade;->getMsgNum()I

    move-result v7

    .line 182
    .local v7, maxMessageCount:I
    invoke-interface {v9}, Lcom/lge/sns/setting/ISettingFacade;->getMsgPer()I

    move-result v8

    .line 184
    .local v8, maxMonthMessage:I
    if-eqz v7, :cond_22

    .line 185
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/lge/sns/message/linkbook/MsgMngr;->applySettingsToMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    :cond_22
    if-eqz v8, :cond_6

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 190
    .local v6, cal:Ljava/util/Calendar;
    const/4 v0, 0x2

    mul-int/lit8 v1, v8, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 192
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/sns/message/linkbook/MsgMngr;->applySettingsToMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_6
.end method

.method public applySettingsToThread(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 277
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 296
    :cond_4
    :goto_4
    return-void

    .line 279
    :cond_5
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v3

    .line 281
    .local v3, setting:Lcom/lge/sns/setting/ISettingFacade;
    if-eqz v3, :cond_4

    .line 283
    invoke-interface {v3}, Lcom/lge/sns/setting/ISettingFacade;->getMsgNum()I

    move-result v1

    .line 284
    .local v1, maxMessageThread:I
    invoke-interface {v3}, Lcom/lge/sns/setting/ISettingFacade;->getMsgPer()I

    move-result v2

    .line 286
    .local v2, maxMonthThread:I
    if-eqz v1, :cond_20

    .line 287
    invoke-direct {p0, p1, p2, v1}, Lcom/lge/sns/message/linkbook/MsgMngr;->applySettingsToThread(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    :cond_20
    if-eqz v2, :cond_4

    .line 291
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 292
    .local v0, cal:Ljava/util/Calendar;
    const/4 v4, 0x2

    mul-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 294
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/lge/sns/message/linkbook/MsgMngr;->applySettingsToThread(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4
.end method

.method public deleteAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v1, 0x0

    .line 465
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 482
    :cond_5
    :goto_5
    return-void

    .line 467
    :cond_6
    invoke-direct {p0, p1, p2, v1}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, selection:Ljava/lang/String;
    monitor-enter p0

    .line 470
    :try_start_b
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->RECIPIENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->TIME_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 475
    const-string v1, "TW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 476
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->TIME_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_Inbox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, p2, v4}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/message/linkbook/MsgMngr;->TIME_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_Outbox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, p2, v4}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    :cond_7f
    monitor-exit p0

    goto :goto_5

    :catchall_81
    move-exception v1

    monitor-exit p0
    :try_end_83
    .catchall {:try_start_b .. :try_end_83} :catchall_81

    throw v1
.end method

.method public deleteMessage(Lcom/lge/sns/message/Message;)V
    .registers 7
    .parameter "message"

    .prologue
    .line 492
    if-nez p1, :cond_3

    .line 501
    :goto_2
    return-void

    .line 494
    :cond_3
    iget-object v1, p1, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    iget-object v2, p1, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    iget-object v4, p1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/sns/message/linkbook/MsgMngr;->deleteMessageFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :try_start_e
    invoke-direct {p0, p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->notifyMessageRemoved(Lcom/lge/sns/message/Message;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_2

    .line 498
    :catch_12
    move-exception v0

    .line 499
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "SNS"

    const-string v2, "notifyMessageRemoved() - Throwable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public deleteThread(Lcom/lge/sns/message/MessageThread;)V
    .registers 6
    .parameter "thread"

    .prologue
    .line 529
    if-nez p1, :cond_3

    .line 539
    :goto_2
    return-void

    .line 531
    :cond_3
    iget-object v1, p1, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    iget-object v2, p1, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->deleteThreadFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :try_start_c
    invoke-direct {p0, p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->notifyThreadRemoved(Lcom/lge/sns/message/MessageThread;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_2

    .line 535
    :catch_10
    move-exception v0

    .line 536
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "SNS"

    const-string v2, "notifyThreadRemoved() - Throwable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/message/Message;
    .registers 15
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "messageId"

    .prologue
    const/4 v5, 0x0

    .line 567
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    if-nez p4, :cond_b

    :cond_9
    move-object v0, v5

    .line 585
    :goto_a
    return-object v0

    .line 569
    :cond_b
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v7

    move-object v4, v8

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 576
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_35

    .line 578
    :try_start_24
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 579
    invoke-direct {p0, v9}, Lcom/lge/sns/message/linkbook/MsgMngr;->createMessageByCursor(Landroid/database/Cursor;)Lcom/lge/sns/message/Message;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_37

    move-result-object v0

    .line 582
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :cond_32
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_35
    move-object v0, v5

    .line 585
    goto :goto_a

    .line 582
    :catchall_37
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMessageCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 596
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_a

    :cond_8
    move v0, v7

    .line 614
    :goto_9
    return v0

    .line 598
    :cond_a
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const-string v3, "/count"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 605
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_34

    .line 607
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 608
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_36

    move-result v0

    .line 611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_34
    move v0, v7

    .line 614
    goto :goto_9

    .line 611
    :catchall_36
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 625
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v7, messages:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/message/Message;>;"
    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    .line 648
    :cond_a
    :goto_a
    return-object v7

    .line 629
    :cond_b
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2, v2}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "updated desc"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 636
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a

    .line 638
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 639
    invoke-direct {p0, v6}, Lcom/lge/sns/message/linkbook/MsgMngr;->createMessageByCursor(Landroid/database/Cursor;)Lcom/lge/sns/message/Message;

    move-result-object v8

    .line 640
    .local v8, newMessage:Lcom/lge/sns/message/Message;
    if-eqz v8, :cond_1e

    .line 641
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2e

    goto :goto_1e

    .line 644
    .end local v8           #newMessage:Lcom/lge/sns/message/Message;
    :catchall_2e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a
.end method

.method public getMessages(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)Ljava/util/List;
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 661
    monitor-enter p0

    .line 662
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/message/linkbook/MsgMngr;->addMessageUpdateListener(Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)V

    .line 663
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 664
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 26
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v21, messages:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/message/Message;>;"
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    if-nez p3, :cond_c

    .line 741
    :cond_b
    :goto_b
    return-object v21

    .line 679
    :cond_c
    const/16 v19, 0x0

    .line 681
    .local v19, cursor:Landroid/database/Cursor;
    const-string v6, "TW"

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "updated desc"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 697
    :goto_35
    if-eqz v19, :cond_b

    .line 699
    :goto_37
    :try_start_37
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_103

    .line 701
    new-instance v5, Lcom/lge/sns/message/Message;

    const/4 v6, 0x4

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x5

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x6

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x7

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v6, 0x8

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v6, 0x9

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v6, 0xa

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/16 v6, 0xb

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v5 .. v18}, Lcom/lge/sns/message/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 714
    .local v5, newMessage:Lcom/lge/sns/message/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/lge/sns/message/linkbook/MsgMngr;->RECIPIENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    iget-object v10, v5, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v6 .. v11}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "_id"

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ab
    .catchall {:try_start_37 .. :try_end_ab} :catchall_d5

    move-result-object v20

    .line 721
    .local v20, cursorRecipient:Landroid/database/Cursor;
    if-eqz v20, :cond_fb

    .line 723
    :goto_ae
    :try_start_ae
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 724
    const/4 v6, 0x5

    move-object/from16 v0, v20

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    move-object/from16 v0, v20

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    move-object/from16 v0, v20

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/lge/sns/message/Message;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_cf
    .catchall {:try_start_ae .. :try_end_cf} :catchall_d0

    goto :goto_ae

    .line 730
    :catchall_d0
    move-exception v6

    :try_start_d1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_d5

    .line 737
    .end local v5           #newMessage:Lcom/lge/sns/message/Message;
    .end local v20           #cursorRecipient:Landroid/database/Cursor;
    :catchall_d5
    move-exception v6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v6

    .line 689
    :cond_da
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "updated"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_35

    .line 730
    .restart local v5       #newMessage:Lcom/lge/sns/message/Message;
    .restart local v20       #cursorRecipient:Landroid/database/Cursor;
    :cond_f8
    :try_start_f8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 734
    :cond_fb
    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_101
    .catchall {:try_start_f8 .. :try_end_101} :catchall_d5

    goto/16 :goto_37

    .line 737
    .end local v5           #newMessage:Lcom/lge/sns/message/Message;
    .end local v20           #cursorRecipient:Landroid/database/Cursor;
    :cond_103
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b
.end method

.method public getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)Ljava/util/List;
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-virtual {p0, p4}, Lcom/lge/sns/message/linkbook/MsgMngr;->addMessageUpdateListener(Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)V

    .line 757
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesCursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 770
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "updated"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSentMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 23
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v19, messages:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/message/Message;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " And (author_id=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "updated"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 795
    .local v18, cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_a6

    .line 797
    :goto_3c
    :try_start_3c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 798
    new-instance v4, Lcom/lge/sns/message/Message;

    const/4 v5, 0x3

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x4

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x5

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x6

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x7

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v5, 0x8

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v5, 0x9

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/16 v5, 0xa

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v5, 0xb

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v17}, Lcom/lge/sns/message/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 810
    .local v4, newMessage:Lcom/lge/sns/message/Message;
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catchall {:try_start_3c .. :try_end_9d} :catchall_9e

    goto :goto_3c

    .line 813
    .end local v4           #newMessage:Lcom/lge/sns/message/Message;
    :catchall_9e
    move-exception v5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_a3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_a6
    return-object v19
.end method

.method public getThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/message/MessageThread;
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 828
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 835
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_24

    .line 837
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 838
    invoke-direct {p0, v6}, Lcom/lge/sns/message/linkbook/MsgMngr;->createThreadByCursor(Landroid/database/Cursor;)Lcom/lge/sns/message/MessageThread;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_26

    move-result-object v0

    .line 841
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 845
    :goto_20
    return-object v0

    .line 841
    :cond_21
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_24
    move-object v0, v2

    .line 845
    goto :goto_20

    .line 841
    :catchall_26
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getThreadCount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    const-string v3, "/count"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, p2, v2}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 863
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2c

    .line 865
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 866
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2e

    move-result v0

    .line 869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 873
    :goto_28
    return v0

    .line 869
    :cond_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2c
    move v0, v7

    .line 873
    goto :goto_28

    .line 869
    :catchall_2e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getThreads(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 27
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/MessageThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v21, threads:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/message/MessageThread;>;"
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/sns/setting/ISettingFacade;->getMsgPer()I

    move-result v20

    .line 886
    .local v20, maxMonthThread:I
    if-eqz v20, :cond_33

    .line 887
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 888
    .local v18, cal:Ljava/util/Calendar;
    const/4 v5, 0x2

    mul-int/lit8 v6, v20, -0x1

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 889
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/message/linkbook/MsgMngr;->applySettingsToThread(Ljava/lang/String;Ljava/lang/String;J)V

    .line 892
    .end local v18           #cal:Ljava/util/Calendar;
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updated DESC limit "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    sub-int v11, p3, v11

    mul-int v11, v11, p4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 899
    .local v19, cursor:Landroid/database/Cursor;
    if-eqz v19, :cond_d3

    .line 901
    :goto_72
    :try_start_72
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 902
    new-instance v5, Lcom/lge/sns/message/MessageThread;

    const/4 v6, 0x3

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x4

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x5

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x6

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x7

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v6, 0x8

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/16 v6, 0x9

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v6, 0xa

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v17}, Lcom/lge/sns/message/MessageThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ca
    .catchall {:try_start_72 .. :try_end_ca} :catchall_cb

    goto :goto_72

    .line 916
    :catchall_cb
    move-exception v5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_d0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 920
    :cond_d3
    return-object v21
.end method

.method public getThreads(Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)Ljava/util/List;
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/message/MessageThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    invoke-virtual {p0, p5}, Lcom/lge/sns/message/linkbook/MsgMngr;->addThreadUpdateListener(Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)V

    .line 936
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lge/sns/message/linkbook/MsgMngr;->getThreads(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThreadsCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    .line 948
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2, v2}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "updated DESC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedMessageCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "mills"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const-string v3, "/updated_count"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " And (updated>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 970
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_45

    .line 972
    :try_start_33
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 973
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_47

    move-result v0

    .line 976
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 980
    :goto_41
    return v0

    .line 976
    :cond_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_45
    move v0, v7

    .line 980
    goto :goto_41

    .line 976
    :catchall_47
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getUpdatedThreadCount(Ljava/lang/String;Ljava/lang/String;J)I
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "mills"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 989
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    const-string v3, "/updated_count"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " And (updated>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 996
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_45

    .line 998
    :try_start_33
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 999
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_47

    move-result v0

    .line 1002
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1006
    :goto_41
    return v0

    .line 1002
    :cond_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_45
    move v0, v7

    .line 1006
    goto :goto_41

    .line 1002
    :catchall_47
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public removeMessageUpdateListener(Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 1089
    sget-object v0, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    monitor-enter v0

    .line 1090
    :try_start_3
    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MessageListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1091
    monitor-exit v0

    .line 1092
    return-void

    .line 1091
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeThreadUpdateListener(Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 1102
    sget-object v0, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    monitor-enter v0

    .line 1103
    :try_start_3
    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->ThreadListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1104
    monitor-exit v0

    .line 1105
    return-void

    .line 1104
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public replyMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 30
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .parameter "messageId"
    .parameter "recipientUid"
    .parameter "subject"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 1117
    const/16 v20, 0x0

    .line 1118
    .local v20, repliedId:Ljava/lang/String;
    monitor-enter p0

    .line 1121
    :try_start_3
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-interface/range {v4 .. v11}, Lcom/lge/newbay/client/IMessage;->replyMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_b5
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_3 .. :try_end_18} :catch_75
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_3 .. :try_end_18} :catch_9e
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_3 .. :try_end_18} :catch_ce
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_3 .. :try_end_18} :catch_104
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_113

    move-result-object v8

    .line 1148
    .end local v20           #repliedId:Ljava/lang/String;
    .local v8, repliedId:Ljava/lang/String;
    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_14f

    .line 1150
    if-eqz v8, :cond_14c

    .line 1151
    const/16 v21, 0x0

    .line 1153
    .local v21, userProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_start_1e
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getProfile()Lcom/lge/newbay/client/IProfile;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_12a

    move-result-object v21

    .line 1159
    if-eqz v21, :cond_14c

    .line 1160
    new-instance v4, Lcom/lge/sns/message/Message;

    invoke-virtual/range {v21 .. v21}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getUsername()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/16 v17, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p2

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v4 .. v17}, Lcom/lge/sns/message/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 1173
    .local v4, reMessage:Lcom/lge/sns/message/Message;
    const/16 v19, 0x0

    .line 1175
    .local v19, recipientProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_start_4e
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getProfile()Lcom/lge/newbay/client/IProfile;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_13b

    move-result-object v19

    .line 1181
    if-eqz v19, :cond_6d

    .line 1182
    invoke-virtual/range {v19 .. v19}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object/from16 v1, p5

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/sns/message/Message;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1185
    :cond_6d
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/lge/sns/message/linkbook/MsgMngr;->updateMessage(Lcom/lge/sns/message/Message;)Landroid/net/Uri;

    move-object v5, v8

    .line 1190
    .end local v4           #reMessage:Lcom/lge/sns/message/Message;
    .end local v19           #recipientProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    .end local v21           #userProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :goto_74
    return-object v5

    .line 1122
    .end local v8           #repliedId:Ljava/lang/String;
    .restart local v20       #repliedId:Ljava/lang/String;
    :catch_75
    move-exception v5

    move-object/from16 v18, v5

    .line 1123
    .local v18, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_78
    const-string v5, "SNS"

    const-string v6, "replyMessage() - HttpUnauthorizatedException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1124
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1125
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-interface/range {v4 .. v11}, Lcom/lge/newbay/client/IMessage;->replyMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9b
    .catchall {:try_start_78 .. :try_end_9b} :catchall_b5
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_78 .. :try_end_9b} :catch_9e
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_78 .. :try_end_9b} :catch_ba
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_78 .. :try_end_9b} :catch_ce
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_78 .. :try_end_9b} :catch_104
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_9b} :catch_113

    move-result-object v8

    .end local v20           #repliedId:Ljava/lang/String;
    .restart local v8       #repliedId:Ljava/lang/String;
    goto/16 :goto_19

    .line 1127
    .end local v8           #repliedId:Ljava/lang/String;
    .end local v18           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v20       #repliedId:Ljava/lang/String;
    :catch_9e
    move-exception v5

    move-object/from16 v18, v5

    .line 1128
    .local v18, e:Lcom/lge/newbay/client/NewbayConnectException;
    :try_start_a1
    const-string v5, "SNS"

    const-string v6, "replyMessage() - NewbayConnectException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1129
    new-instance v5, Lcom/lge/sns/ServerConnectFail;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_b5
    .catchall {:try_start_a1 .. :try_end_b5} :catchall_b5

    .line 1148
    .end local v18           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catchall_b5
    move-exception v5

    move-object/from16 v8, v20

    .end local v20           #repliedId:Ljava/lang/String;
    .restart local v8       #repliedId:Ljava/lang/String;
    :goto_b8
    :try_start_b8
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_14f

    throw v5

    .line 1130
    .end local v8           #repliedId:Ljava/lang/String;
    .local v18, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v20       #repliedId:Ljava/lang/String;
    :catch_ba
    move-exception v5

    move-object/from16 v18, v5

    .line 1131
    :try_start_bd
    const-string v5, "SNS"

    const-string v6, "replyMessage() - HttpUnauthorizatedException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 1133
    .end local v18           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_ce
    move-exception v5

    move-object/from16 v18, v5

    .line 1134
    .local v18, e:Lorg/apache/http/client/HttpResponseException;
    const-string v5, "SNS"

    const-string v6, "replyMessage() - HttpResponseException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_ea

    .line 1136
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 1137
    :cond_ea
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x130

    if-eq v5, v6, :cond_100

    .line 1139
    new-instance v5, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_100
    move-object/from16 v8, v20

    .line 1147
    .end local v20           #repliedId:Ljava/lang/String;
    .restart local v8       #repliedId:Ljava/lang/String;
    goto/16 :goto_19

    .line 1141
    .end local v8           #repliedId:Ljava/lang/String;
    .end local v18           #e:Lorg/apache/http/client/HttpResponseException;
    .restart local v20       #repliedId:Ljava/lang/String;
    :catch_104
    move-exception v5

    move-object/from16 v18, v5

    .line 1142
    .local v18, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v5, "SNS"

    const-string v6, "replyMessage() - UnauthorizatedException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1143
    throw v18

    .line 1144
    .end local v18           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_113
    move-exception v5

    move-object/from16 v18, v5

    .line 1145
    .local v18, e:Ljava/lang/Exception;
    const-string v5, "SNS"

    const-string v6, "replyMessage() - Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    new-instance v5, Lcom/lge/sns/InvalidResponseException;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_12a
    .catchall {:try_start_bd .. :try_end_12a} :catchall_b5

    .line 1154
    .end local v18           #e:Ljava/lang/Exception;
    .end local v20           #repliedId:Ljava/lang/String;
    .restart local v8       #repliedId:Ljava/lang/String;
    .restart local v21       #userProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :catch_12a
    move-exception v5

    move-object/from16 v18, v5

    .line 1155
    .restart local v18       #e:Ljava/lang/Exception;
    const-string v5, "SNS"

    const-string v6, "getUserProfile() - Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1156
    const/4 v5, 0x0

    goto/16 :goto_74

    .line 1176
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v4       #reMessage:Lcom/lge/sns/message/Message;
    .restart local v19       #recipientProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :catch_13b
    move-exception v5

    move-object/from16 v18, v5

    .line 1177
    .restart local v18       #e:Ljava/lang/Exception;
    const-string v5, "SNS"

    const-string v6, "getUserProfile() - Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    const/4 v5, 0x0

    goto/16 :goto_74

    .line 1190
    .end local v4           #reMessage:Lcom/lge/sns/message/Message;
    .end local v18           #e:Ljava/lang/Exception;
    .end local v19           #recipientProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    .end local v21           #userProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :cond_14c
    const/4 v5, 0x0

    goto/16 :goto_74

    .line 1148
    :catchall_14f
    move-exception v5

    goto/16 :goto_b8
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 28
    .parameter "snsId"
    .parameter "userId"
    .parameter "recipientUid"
    .parameter "subject"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 1202
    const/16 v20, 0x0

    .line 1204
    .local v20, returnedId:Ljava/lang/String;
    monitor-enter p0

    .line 1207
    :try_start_3
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/lge/newbay/client/IMessage;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_23
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_3 .. :try_end_14} :catch_47
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_3 .. :try_end_14} :catch_81

    move-result-object v8

    .line 1228
    .end local v20           #returnedId:Ljava/lang/String;
    .local v8, returnedId:Ljava/lang/String;
    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_128

    .line 1230
    const-string v5, "TW"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    .line 1231
    const/4 v5, 0x0

    .line 1278
    :goto_22
    return-object v5

    .line 1208
    .end local v8           #returnedId:Ljava/lang/String;
    .restart local v20       #returnedId:Ljava/lang/String;
    :catch_23
    move-exception v5

    move-object/from16 v18, v5

    .line 1209
    .local v18, e:Ljava/lang/Exception;
    :try_start_26
    const-string v5, "SNS"

    const-string v6, "sendMessage() - Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1210
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1211
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/lge/newbay/client/IMessage;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_63
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_26 .. :try_end_45} :catch_47
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_26 .. :try_end_45} :catch_81
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_45} :catch_90

    move-result-object v8

    .end local v20           #returnedId:Ljava/lang/String;
    .restart local v8       #returnedId:Ljava/lang/String;
    goto :goto_15

    .line 1213
    .end local v8           #returnedId:Ljava/lang/String;
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v20       #returnedId:Ljava/lang/String;
    :catch_47
    move-exception v5

    move-object/from16 v18, v5

    .line 1214
    .local v18, e:Lorg/apache/http/client/HttpResponseException;
    :try_start_4a
    const-string v5, "SNS"

    const-string v6, "sendMessage() - HttpResponseException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_68

    .line 1216
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5
    :try_end_63
    .catchall {:try_start_4a .. :try_end_63} :catchall_63

    .line 1228
    .end local v18           #e:Lorg/apache/http/client/HttpResponseException;
    :catchall_63
    move-exception v5

    move-object/from16 v8, v20

    .end local v20           #returnedId:Ljava/lang/String;
    .restart local v8       #returnedId:Ljava/lang/String;
    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_128

    throw v5

    .line 1217
    .end local v8           #returnedId:Ljava/lang/String;
    .restart local v18       #e:Lorg/apache/http/client/HttpResponseException;
    .restart local v20       #returnedId:Ljava/lang/String;
    :cond_68
    :try_start_68
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x130

    if-eq v5, v6, :cond_7e

    .line 1219
    new-instance v5, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_7e
    move-object/from16 v8, v20

    .line 1227
    .end local v20           #returnedId:Ljava/lang/String;
    .restart local v8       #returnedId:Ljava/lang/String;
    goto :goto_15

    .line 1221
    .end local v8           #returnedId:Ljava/lang/String;
    .end local v18           #e:Lorg/apache/http/client/HttpResponseException;
    .restart local v20       #returnedId:Ljava/lang/String;
    :catch_81
    move-exception v5

    move-object/from16 v18, v5

    .line 1222
    .local v18, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v5, "SNS"

    const-string v6, "sendMessage() - UnauthorizatedException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    throw v18

    .line 1224
    .local v18, e:Ljava/lang/Exception;
    :catch_90
    move-exception v5

    move-object/from16 v18, v5

    .line 1225
    const-string v5, "SNS"

    const-string v6, "sendMessage() - Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1226
    new-instance v5, Lcom/lge/sns/InvalidResponseException;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_a7
    .catchall {:try_start_68 .. :try_end_a7} :catchall_63

    .line 1235
    .end local v18           #e:Ljava/lang/Exception;
    .end local v20           #returnedId:Ljava/lang/String;
    .restart local v8       #returnedId:Ljava/lang/String;
    :cond_a7
    if-eqz v8, :cond_125

    .line 1236
    const/16 v21, 0x0

    .line 1238
    .local v21, userProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_start_ab
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getProfile()Lcom/lge/newbay/client/IProfile;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b7} :catch_103

    move-result-object v21

    .line 1244
    if-eqz v21, :cond_125

    .line 1245
    new-instance v4, Lcom/lge/sns/message/Message;

    const-string v7, "Outbox"

    invoke-virtual/range {v21 .. v21}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getUsername()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/16 v17, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v17}, Lcom/lge/sns/message/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 1258
    .local v4, newMessage:Lcom/lge/sns/message/Message;
    const/16 v19, 0x0

    .line 1260
    .local v19, recipientProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_start_db
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getProfile()Lcom/lge/newbay/client/IProfile;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e7} :catch_114

    move-result-object v19

    .line 1266
    if-eqz v19, :cond_fa

    .line 1267
    invoke-virtual/range {v19 .. v19}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/sns/message/Message;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1273
    :cond_fa
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/lge/sns/message/linkbook/MsgMngr;->updateMessage(Lcom/lge/sns/message/Message;)Landroid/net/Uri;

    move-object v5, v8

    .line 1275
    goto/16 :goto_22

    .line 1239
    .end local v4           #newMessage:Lcom/lge/sns/message/Message;
    .end local v19           #recipientProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :catch_103
    move-exception v5

    move-object/from16 v18, v5

    .line 1240
    .restart local v18       #e:Ljava/lang/Exception;
    const-string v5, "SNS"

    const-string v6, "getUserProfile() - Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1241
    const/4 v5, 0x0

    goto/16 :goto_22

    .line 1261
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v4       #newMessage:Lcom/lge/sns/message/Message;
    .restart local v19       #recipientProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :catch_114
    move-exception v5

    move-object/from16 v18, v5

    .line 1262
    .restart local v18       #e:Ljava/lang/Exception;
    const-string v5, "SNS"

    const-string v6, "getUserProfile() - Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    const/4 v5, 0x0

    goto/16 :goto_22

    .line 1278
    .end local v4           #newMessage:Lcom/lge/sns/message/Message;
    .end local v18           #e:Ljava/lang/Exception;
    .end local v19           #recipientProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    .end local v21           #userProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :cond_125
    const/4 v5, 0x0

    goto/16 :goto_22

    .line 1228
    :catchall_128
    move-exception v5

    goto/16 :goto_66
.end method

.method public setUpdatedTime(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "mills"

    .prologue
    const/4 v2, 0x0

    .line 1287
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1289
    .local v6, conVal:Landroid/content/ContentValues;
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const-string v0, "user_id"

    invoke-virtual {v6, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const-string v0, "updated"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1293
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->TIME_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " And (updated<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v6, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1299
    .local v8, rows:I
    const/4 v0, 0x1

    if-ge v8, v0, :cond_67

    .line 1300
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->TIME_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, p2, v2}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1307
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_67

    .line 1309
    :try_start_55
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1310
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->TIME_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_68

    .line 1313
    :cond_64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1317
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_67
    return-void

    .line 1313
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_68
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateMessage(Lcom/lge/sns/message/Message;)Landroid/net/Uri;
    .registers 15
    .parameter "message"

    .prologue
    .line 1328
    if-nez p1, :cond_4

    .line 1330
    const/4 v0, 0x0

    .line 1394
    :goto_3
    return-object v0

    .line 1333
    :cond_4
    const/4 v9, 0x0

    .line 1335
    .local v9, retUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1337
    .local v6, conVal:Landroid/content/ContentValues;
    const-string v0, "sns_id"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const-string v0, "user_id"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string v0, "thread_id"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v0, "message_id"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const-string v0, "author_id"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->authorId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const-string v0, "author_name"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->authorName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string v0, "subject"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->subject:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v0, "body"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->body:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const-string v0, "updated"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1346
    const-string v0, "published"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->publishedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1347
    const-string v0, "unread"

    iget v1, p1, Lcom/lge/sns/message/Message;->unread:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1349
    monitor-enter p0

    .line 1351
    :try_start_6c
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    iget-object v1, p1, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    iget-object v2, p1, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    iget-object v4, p1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v6, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_6c .. :try_end_84} :catchall_10b

    move-result v10

    .line 1357
    .local v10, rowId:I
    const/4 v0, 0x1

    if-ge v10, v0, :cond_10e

    .line 1360
    :try_start_88
    invoke-direct {p0, p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->notifyMessageAdded(Lcom/lge/sns/message/Message;)V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_10b
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8b} :catch_102

    .line 1365
    :goto_8b
    :try_start_8b
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 1367
    iget-object v0, p1, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    if-eqz v0, :cond_12e

    .line 1369
    iget-object v0, p1, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 1370
    .local v11, size:I
    const/4 v8, 0x0

    .local v8, location:I
    :goto_a0
    if-ge v8, v11, :cond_12e

    .line 1371
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1373
    .local v7, conValRecipient:Landroid/content/ContentValues;
    const-string v0, "sns_id"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v0, "user_id"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->userId:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v0, "thread_id"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v0, "message_id"

    iget-object v1, p1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v1, "recipient_id"

    iget-object v0, p1, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/message/Recipient;

    invoke-virtual {v0}, Lcom/lge/sns/message/Recipient;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v1, "recipient_name"

    iget-object v0, p1, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/message/Recipient;

    invoke-virtual {v0}, Lcom/lge/sns/message/Recipient;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v1, "recipient_display_name"

    iget-object v0, p1, Lcom/lge/sns/message/Message;->recipients:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/message/Recipient;

    invoke-virtual {v0}, Lcom/lge/sns/message/Recipient;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/message/linkbook/MsgMngr;->RECIPIENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1370
    add-int/lit8 v8, v8, 0x1

    goto :goto_a0

    .line 1361
    .end local v7           #conValRecipient:Landroid/content/ContentValues;
    .end local v8           #location:I
    .end local v11           #size:I
    :catch_102
    move-exception v12

    .line 1362
    .local v12, t:Ljava/lang/Throwable;
    const-string v0, "SNS"

    const-string v1, "notifyMessageAdded() - Throwable"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8b

    .line 1392
    .end local v10           #rowId:I
    .end local v12           #t:Ljava/lang/Throwable;
    :catchall_10b
    move-exception v0

    monitor-exit p0
    :try_end_10d
    .catchall {:try_start_8b .. :try_end_10d} :catchall_10b

    throw v0

    .line 1386
    .restart local v10       #rowId:I
    :cond_10e
    :try_start_10e
    invoke-direct {p0, p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->notifyMessageUpdated(Lcom/lge/sns/message/Message;)V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_10b
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_111} :catch_132

    .line 1390
    :goto_111
    :try_start_111
    sget-object v0, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1392
    :cond_12e
    monitor-exit p0

    move-object v0, v9

    .line 1394
    goto/16 :goto_3

    .line 1387
    :catch_132
    move-exception v12

    .line 1388
    .restart local v12       #t:Ljava/lang/Throwable;
    const-string v0, "SNS"

    const-string v1, "notifyMessageUpdated() - Throwable"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13a
    .catchall {:try_start_111 .. :try_end_13a} :catchall_10b

    goto :goto_111
.end method

.method public updateMessageByUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 27
    .parameter "snsId"
    .parameter "userId"
    .parameter "messageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1411
    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->myReader:Lorg/xml/sax/XMLReader;

    sget-object v6, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1413
    const/16 v22, 0x0

    .line 1416
    .local v22, xml:Ljava/lang/String;
    :try_start_9
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/lge/newbay/client/IMessage;->getMessageAsXmlString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_9 .. :try_end_13} :catch_17
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_9 .. :try_end_13} :catch_a3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_bf
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_9 .. :try_end_13} :catch_ce

    move-result-object v22

    .line 1455
    :goto_14
    if-nez v22, :cond_e5

    .line 1494
    .end local p3
    :cond_16
    :goto_16
    return-void

    .line 1417
    .restart local p3
    :catch_17
    move-exception v5

    move-object/from16 v18, v5

    .line 1418
    .local v18, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    const-string v5, "SNS"

    const-string v6, "getMessageAsXmlString() - HttpUnauthorizatedException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1420
    :try_start_25
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1421
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/lge/newbay/client/IMessage;->getMessageAsXmlString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Lcom/lge/sns/InvalidResponseException; {:try_start_25 .. :try_end_32} :catch_34
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_25 .. :try_end_32} :catch_4b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_7d
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_25 .. :try_end_32} :catch_8c

    move-result-object v22

    goto :goto_14

    .line 1422
    :catch_34
    move-exception v5

    move-object/from16 v19, v5

    .line 1423
    .local v19, e1:Lcom/lge/sns/InvalidResponseException;
    const-string v5, "SNS"

    const-string v6, "getMessageAsXmlString() - InvalidResponseException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1424
    new-instance v5, Lcom/lge/sns/InvalidResponseException;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1425
    .end local v19           #e1:Lcom/lge/sns/InvalidResponseException;
    :catch_4b
    move-exception v5

    move-object/from16 v19, v5

    .line 1426
    .local v19, e1:Lorg/apache/http/client/HttpResponseException;
    const-string v5, "SNS"

    const-string v6, "getMessageAsXmlString() - HttpResponseException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1427
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_67

    .line 1428
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 1429
    :cond_67
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x130

    if-eq v5, v6, :cond_16

    .line 1430
    new-instance v5, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1434
    .end local v19           #e1:Lorg/apache/http/client/HttpResponseException;
    :catch_7d
    move-exception v5

    move-object/from16 v19, v5

    .line 1435
    .local v19, e1:Ljava/io/IOException;
    const-string v5, "SNS"

    const-string v6, "getMessageAsXmlString() - IOException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1436
    throw v19

    .line 1437
    .end local v19           #e1:Ljava/io/IOException;
    :catch_8c
    move-exception v5

    move-object/from16 v19, v5

    .line 1438
    .local v19, e1:Lcom/lge/newbay/client/NewbayConnectException;
    const-string v5, "SNS"

    const-string v6, "getMessageAsXmlString() - NewbayConnectException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    new-instance v5, Lcom/lge/sns/ServerConnectFail;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1441
    .end local v18           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v19           #e1:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_a3
    move-exception v5

    move-object/from16 v18, v5

    .line 1442
    .local v18, e:Lorg/apache/http/client/HttpResponseException;
    const-string v5, "SNS"

    const-string v6, "getMessageAsXmlString() - HttpResponseException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1443
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_16

    .line 1444
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 1447
    .end local v18           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_bf
    move-exception v5

    move-object/from16 v18, v5

    .line 1448
    .local v18, e:Ljava/io/IOException;
    const-string v5, "SNS"

    const-string v6, "getMessageAsXmlString() - IOException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1449
    throw v18

    .line 1450
    .end local v18           #e:Ljava/io/IOException;
    :catch_ce
    move-exception v5

    move-object/from16 v18, v5

    .line 1451
    .local v18, e:Lcom/lge/newbay/client/NewbayConnectException;
    const-string v5, "SNS"

    const-string v6, "getMessageAsXmlString() - NewbayConnectException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1452
    new-instance v5, Lcom/lge/sns/ServerConnectFail;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1458
    .end local v18           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :cond_e5
    :try_start_e5
    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->myReader:Lorg/xml/sax/XMLReader;

    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_f8} :catch_173
    .catch Lorg/xml/sax/SAXException; {:try_start_e5 .. :try_end_f8} :catch_182

    .line 1467
    new-instance v4, Lcom/lge/sns/message/Message;

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v7, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->threadId:Ljava/lang/String;

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v8, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->messageId:Ljava/lang/String;

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v5, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->author:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    iget-object v9, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->id:Ljava/lang/String;

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v5, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->author:Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    iget-object v10, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->dispName:Ljava/lang/String;

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v11, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->subject:Ljava/lang/String;

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v12, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->body:Ljava/lang/String;

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-wide v13, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->updated:J

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-wide v15, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->published:J

    const/16 v17, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v17}, Lcom/lge/sns/message/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 1481
    .local v4, newMessage:Lcom/lge/sns/message/Message;
    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v5, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->recipients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v21

    .line 1482
    .local v21, recipientsCount:I
    const/16 v20, 0x0

    .end local p3
    .local v20, i:I
    :goto_131
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_191

    .line 1483
    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v5, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->recipients:Ljava/util/List;

    move-object v0, v5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->id:Ljava/lang/String;

    move-object v5, v0

    sget-object v6, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v6, v6, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->recipients:Ljava/util/List;

    move-object v0, v6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->userName:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v7, v7, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->recipients:Ljava/util/List;

    move-object v0, v7

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/lge/sns/message/linkbook/MessageUpdateHandler$Person;->dispName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/sns/message/Message;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1482
    add-int/lit8 v20, v20, 0x1

    goto :goto_131

    .line 1459
    .end local v4           #newMessage:Lcom/lge/sns/message/Message;
    .end local v20           #i:I
    .end local v21           #recipientsCount:I
    .restart local p3
    :catch_173
    move-exception v5

    move-object/from16 v18, v5

    .line 1460
    .local v18, e:Ljava/io/IOException;
    const-string v5, "SNS"

    const-string v6, "parse() - IOException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1461
    throw v18

    .line 1462
    .end local v18           #e:Ljava/io/IOException;
    :catch_182
    move-exception v5

    move-object/from16 v18, v5

    .line 1463
    .local v18, e:Lorg/xml/sax/SAXException;
    const-string v5, "SNS"

    const-string v6, "parse() - SAXException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1464
    throw v18

    .line 1489
    .end local v18           #e:Lorg/xml/sax/SAXException;
    .end local p3
    .restart local v4       #newMessage:Lcom/lge/sns/message/Message;
    .restart local v20       #i:I
    .restart local v21       #recipientsCount:I
    :cond_191
    const-string v5, "TW"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1aa

    .line 1490
    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->m_hMessageUpdate:Lcom/lge/sns/message/linkbook/MessageUpdateHandler;

    iget-object v5, v5, Lcom/lge/sns/message/linkbook/MessageUpdateHandler;->threadId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->applySettingsToMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :cond_1aa
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/lge/sns/message/linkbook/MsgMngr;->updateMessage(Lcom/lge/sns/message/Message;)Landroid/net/Uri;

    goto/16 :goto_16
.end method

.method public updateMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 31
    .parameter "snsId"
    .parameter "userId"
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;,
            Lcom/lge/feed/parser/FeedParseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1505
    const/16 v24, 0x0

    .line 1507
    .local v24, updatedMessageCount:I
    monitor-enter p0

    .line 1510
    const/16 v20, 0x1

    .line 1511
    .local v20, pageNum:I
    const/16 v21, 0x14

    .line 1513
    .local v21, pageSize:I
    :try_start_7
    new-instance v11, Ljava/util/Date;

    const-wide/16 v5, 0x0

    invoke-direct {v11, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1514
    .local v11, from:Ljava/util/Date;
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v12, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1516
    .local v12, to:Ljava/util/Date;
    const-string v5, "TW"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 1517
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v22

    .line 1519
    .local v22, settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    const/16 v19, 0x1

    .line 1521
    .local v19, maxMonthThread:I
    invoke-interface/range {v22 .. v22}, Lcom/lge/sns/setting/ISettingFacade;->getMsgPer()I

    move-result v19

    .line 1522
    invoke-interface/range {v22 .. v22}, Lcom/lge/sns/setting/ISettingFacade;->getMsgNum()I

    move-result v10

    .line 1524
    .end local v21           #pageSize:I
    .local v10, pageSize:I
    if-nez v10, :cond_26e

    .line 1525
    const/16 v10, 0x2710

    move/from16 v21, v10

    .line 1528
    .end local v10           #pageSize:I
    .restart local v21       #pageSize:I
    :goto_3e
    if-eqz v19, :cond_4e

    .line 1529
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 1530
    .local v13, cal:Ljava/util/Calendar;
    const/4 v5, 0x2

    mul-int/lit8 v6, v19, -0x1

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1531
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 1534
    .end local v13           #cal:Ljava/util/Calendar;
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/sns/message/linkbook/MsgMngr;->TIME_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_82
    .catchall {:try_start_7 .. :try_end_82} :catchall_c0

    move-result-object v14

    .line 1541
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_a1

    .line 1543
    :try_start_85
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 1544
    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_9e

    .line 1545
    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Ljava/util/Date;->setTime(J)V
    :try_end_9e
    .catchall {:try_start_85 .. :try_end_9e} :catchall_bb

    .line 1548
    :cond_9e
    :try_start_9e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_c0

    :cond_a1
    move/from16 v10, v21

    .line 1572
    .end local v19           #maxMonthThread:I
    .end local v21           #pageSize:I
    .end local v22           #settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    .restart local v10       #pageSize:I
    :goto_a3
    const/16 v26, 0x0

    .line 1574
    .local v26, xml:Ljava/lang/String;
    :try_start_a5
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, v20

    invoke-interface/range {v5 .. v12}, Lcom/lge/newbay/client/IMessage;->getMessageListAsXmlString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    :try_end_b4
    .catchall {:try_start_a5 .. :try_end_b4} :catchall_140
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_a5 .. :try_end_b4} :catch_10c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_a5 .. :try_end_b4} :catch_142
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b4} :catch_174
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_a5 .. :try_end_b4} :catch_17e
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b4} :catch_18d

    move-result-object v26

    .line 1604
    :goto_b5
    if-nez v26, :cond_19b

    :try_start_b7
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_140

    move/from16 v25, v24

    .line 1656
    .end local v24           #updatedMessageCount:I
    .local v25, updatedMessageCount:I
    :goto_ba
    return v25

    .line 1548
    .end local v10           #pageSize:I
    .end local v25           #updatedMessageCount:I
    .end local v26           #xml:Ljava/lang/String;
    .restart local v19       #maxMonthThread:I
    .restart local v21       #pageSize:I
    .restart local v22       #settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    .restart local v24       #updatedMessageCount:I
    :catchall_bb
    move-exception v5

    :try_start_bc
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_c0
    .catchall {:try_start_bc .. :try_end_c0} :catchall_c0

    .line 1654
    .end local v11           #from:Ljava/util/Date;
    .end local v12           #to:Ljava/util/Date;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v19           #maxMonthThread:I
    .end local v22           #settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    :catchall_c0
    move-exception v5

    move/from16 v10, v21

    .end local v21           #pageSize:I
    .restart local v10       #pageSize:I
    :goto_c3
    :try_start_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_140

    throw v5

    .line 1552
    .end local v10           #pageSize:I
    .restart local v11       #from:Ljava/util/Date;
    .restart local v12       #to:Ljava/util/Date;
    .restart local v21       #pageSize:I
    :cond_c5
    :try_start_c5
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/sns/message/linkbook/MsgMngr;->MESSAGE_URI:Landroid/net/Uri;

    const-string v7, "/max_updated"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e5
    .catchall {:try_start_c5 .. :try_end_e5} :catchall_c0

    move-result-object v14

    .line 1559
    .restart local v14       #cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_26a

    .line 1561
    :try_start_e8
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_101

    .line 1562
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_101

    .line 1563
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Ljava/util/Date;->setTime(J)V
    :try_end_101
    .catchall {:try_start_e8 .. :try_end_101} :catchall_107

    .line 1567
    :cond_101
    :try_start_101
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move/from16 v10, v21

    .line 1568
    .end local v21           #pageSize:I
    .restart local v10       #pageSize:I
    goto :goto_a3

    .line 1567
    .end local v10           #pageSize:I
    .restart local v21       #pageSize:I
    :catchall_107
    move-exception v5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_10c
    .catchall {:try_start_101 .. :try_end_10c} :catchall_c0

    .line 1575
    .end local v21           #pageSize:I
    .restart local v10       #pageSize:I
    .restart local v26       #xml:Ljava/lang/String;
    :catch_10c
    move-exception v5

    move-object v15, v5

    .line 1576
    .local v15, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_10e
    const-string v5, "SNS"

    const-string v6, "getMessageListAsXmlString() - HttpUnauthorizatedException"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1577
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->tryLogin(Ljava/lang/String;)Ljava/lang/String;
    :try_end_118
    .catchall {:try_start_10e .. :try_end_118} :catchall_140

    .line 1579
    :try_start_118
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, v20

    invoke-interface/range {v5 .. v12}, Lcom/lge/newbay/client/IMessage;->getMessageListAsXmlString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    :try_end_127
    .catchall {:try_start_118 .. :try_end_127} :catchall_140
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_118 .. :try_end_127} :catch_129

    move-result-object v26

    goto :goto_b5

    .line 1580
    :catch_129
    move-exception v5

    move-object/from16 v16, v5

    .line 1581
    .local v16, e1:Lcom/lge/newbay/client/NewbayConnectException;
    :try_start_12c
    const-string v5, "SNS"

    const-string v6, "getMessageListAsXmlString() - NewbayConnectException"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1582
    new-instance v5, Lcom/lge/sns/ServerConnectFail;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1654
    .end local v11           #from:Ljava/util/Date;
    .end local v12           #to:Ljava/util/Date;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v15           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v16           #e1:Lcom/lge/newbay/client/NewbayConnectException;
    .end local v26           #xml:Ljava/lang/String;
    :catchall_140
    move-exception v5

    goto :goto_c3

    .line 1584
    .restart local v11       #from:Ljava/util/Date;
    .restart local v12       #to:Ljava/util/Date;
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v26       #xml:Ljava/lang/String;
    :catch_142
    move-exception v5

    move-object v15, v5

    .line 1585
    .local v15, e:Lorg/apache/http/client/HttpResponseException;
    const-string v5, "SNS"

    const-string v6, "getMessageListAsXmlString() - HttpResponseException"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1586
    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_159

    .line 1587
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 1588
    :cond_159
    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x130

    if-eq v5, v6, :cond_16f

    .line 1589
    new-instance v5, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1591
    :cond_16f
    monitor-exit p0

    move/from16 v25, v24

    .end local v24           #updatedMessageCount:I
    .restart local v25       #updatedMessageCount:I
    goto/16 :goto_ba

    .line 1593
    .end local v15           #e:Lorg/apache/http/client/HttpResponseException;
    .end local v25           #updatedMessageCount:I
    .restart local v24       #updatedMessageCount:I
    :catch_174
    move-exception v5

    move-object v15, v5

    .line 1594
    .local v15, e:Ljava/io/IOException;
    const-string v5, "SNS"

    const-string v6, "getMessageListAsXmlString() - IOException"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1595
    throw v15

    .line 1596
    .end local v15           #e:Ljava/io/IOException;
    :catch_17e
    move-exception v5

    move-object v15, v5

    .line 1597
    .local v15, e:Lcom/lge/newbay/client/NewbayConnectException;
    const-string v5, "SNS"

    const-string v6, "getMessageListAsXmlString() - NewbayConnectException"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1598
    new-instance v5, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v5, v15}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1599
    .end local v15           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_18d
    move-exception v5

    move-object v15, v5

    .line 1600
    .local v15, e:Ljava/lang/Exception;
    const-string v5, "SNS"

    const-string v6, "getMessageListAsXmlString() - Exception"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1601
    monitor-exit p0

    move/from16 v25, v24

    .end local v24           #updatedMessageCount:I
    .restart local v25       #updatedMessageCount:I
    goto/16 :goto_ba

    .line 1609
    .end local v15           #e:Ljava/lang/Exception;
    .end local v25           #updatedMessageCount:I
    .restart local v24       #updatedMessageCount:I
    :cond_19b
    const-string v5, "<id>"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1612
    .local v17, ids:[Ljava/lang/String;
    const/16 v18, 0x2

    .local v18, location:I
    :goto_1a6
    move-object/from16 v0, v17

    array-length v0, v0

    move v5, v0
    :try_end_1aa
    .catchall {:try_start_12c .. :try_end_1aa} :catchall_140

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_213

    .line 1615
    :try_start_1af
    aget-object v5, v17, v18

    const-string v6, "</id>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->updateMessageByUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c4
    .catchall {:try_start_1af .. :try_end_1c4} :catchall_140
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1af .. :try_end_1c4} :catch_1c9
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1c4} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1c4} :catch_205

    .line 1616
    add-int/lit8 v24, v24, 0x1

    .line 1612
    add-int/lit8 v18, v18, 0x1

    goto :goto_1a6

    .line 1617
    :catch_1c9
    move-exception v5

    move-object v15, v5

    .line 1618
    .local v15, e:Lorg/apache/http/client/HttpResponseException;
    :try_start_1cb
    const-string v5, "SNS"

    const-string v6, "updateMessageByUri() - HttpResponseException"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1619
    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_1e0

    .line 1620
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 1621
    :cond_1e0
    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x130

    if-eq v5, v6, :cond_1f6

    .line 1622
    new-instance v5, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1624
    :cond_1f6
    monitor-exit p0

    move/from16 v25, v24

    .end local v24           #updatedMessageCount:I
    .restart local v25       #updatedMessageCount:I
    goto/16 :goto_ba

    .line 1626
    .end local v15           #e:Lorg/apache/http/client/HttpResponseException;
    .end local v25           #updatedMessageCount:I
    .restart local v24       #updatedMessageCount:I
    :catch_1fb
    move-exception v5

    move-object v15, v5

    .line 1627
    .local v15, e:Ljava/io/IOException;
    const-string v5, "SNS"

    const-string v6, "updateMessageByUri() - IOException"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1628
    throw v15

    .line 1629
    .end local v15           #e:Ljava/io/IOException;
    :catch_205
    move-exception v5

    move-object v15, v5

    .line 1630
    .local v15, e:Ljava/lang/Exception;
    const-string v5, "SNS"

    const-string v6, "updateMessageByUri() - Exception"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1631
    monitor-exit p0

    move/from16 v25, v24

    .end local v24           #updatedMessageCount:I
    .restart local v25       #updatedMessageCount:I
    goto/16 :goto_ba

    .line 1643
    .end local v15           #e:Ljava/lang/Exception;
    .end local v25           #updatedMessageCount:I
    .restart local v24       #updatedMessageCount:I
    :cond_213
    const-string v5, "TW"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_252

    .line 1644
    if-lez v24, :cond_252

    .line 1645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move-wide v3, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/sns/message/linkbook/MsgMngr;->setUpdatedTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1648
    :cond_252
    invoke-virtual/range {p0 .. p3}, Lcom/lge/sns/message/linkbook/MsgMngr;->getThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/message/MessageThread;

    move-result-object v23

    .line 1649
    .local v23, thread:Lcom/lge/sns/message/MessageThread;
    if-eqz v23, :cond_265

    .line 1651
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/lge/sns/message/MessageThread;->unread:I

    .line 1652
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/sns/message/linkbook/MsgMngr;->updateThread(Lcom/lge/sns/message/MessageThread;)Landroid/net/Uri;

    .line 1654
    :cond_265
    monitor-exit p0
    :try_end_266
    .catchall {:try_start_1cb .. :try_end_266} :catchall_140

    move/from16 v25, v24

    .line 1656
    .end local v24           #updatedMessageCount:I
    .restart local v25       #updatedMessageCount:I
    goto/16 :goto_ba

    .end local v10           #pageSize:I
    .end local v17           #ids:[Ljava/lang/String;
    .end local v18           #location:I
    .end local v23           #thread:Lcom/lge/sns/message/MessageThread;
    .end local v25           #updatedMessageCount:I
    .end local v26           #xml:Ljava/lang/String;
    .restart local v21       #pageSize:I
    .restart local v24       #updatedMessageCount:I
    :cond_26a
    move/from16 v10, v21

    .end local v21           #pageSize:I
    .restart local v10       #pageSize:I
    goto/16 :goto_a3

    .end local v14           #cursor:Landroid/database/Cursor;
    .restart local v19       #maxMonthThread:I
    .restart local v22       #settingFacade:Lcom/lge/sns/setting/ISettingFacade;
    :cond_26e
    move/from16 v21, v10

    .end local v10           #pageSize:I
    .restart local v21       #pageSize:I
    goto/16 :goto_3e
.end method

.method public updateThread(Lcom/lge/sns/message/MessageThread;)Landroid/net/Uri;
    .registers 13
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const-string v7, "unread"

    const-string v5, "SNS"

    .line 1668
    if-nez p1, :cond_9

    .line 1712
    :goto_8
    return-object v4

    .line 1670
    :cond_9
    const/4 v1, 0x0

    .line 1671
    .local v1, retUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1673
    .local v0, conVal:Landroid/content/ContentValues;
    const-string v4, "sns_id"

    iget-object v5, p1, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v4, "user_id"

    iget-object v5, p1, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const-string v4, "thread_id"

    iget-object v5, p1, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string v4, "author_id"

    iget-object v5, p1, Lcom/lge/sns/message/MessageThread;->authorId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v4, "author_name"

    iget-object v5, p1, Lcom/lge/sns/message/MessageThread;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string v4, "title"

    iget-object v5, p1, Lcom/lge/sns/message/MessageThread;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const-string v4, "summary"

    iget-object v5, p1, Lcom/lge/sns/message/MessageThread;->summary:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const-string v4, "updated"

    iget-object v5, p1, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1681
    const-string v4, "published"

    iget-object v5, p1, Lcom/lge/sns/message/MessageThread;->publishedDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1682
    const-string v4, "unread"

    iget v4, p1, Lcom/lge/sns/message/MessageThread;->unread:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1686
    monitor-enter p0

    .line 1687
    :try_start_6a
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    iget-object v6, p1, Lcom/lge/sns/message/MessageThread;->snsId:Ljava/lang/String;

    iget-object v7, p1, Lcom/lge/sns/message/MessageThread;->userId:Ljava/lang/String;

    iget-object v8, p1, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1693
    .local v2, rowId:I
    if-ge v2, v10, :cond_ac

    .line 1694
    const-string v4, "unread"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    const/4 v4, 0x1

    iput v4, p1, Lcom/lge/sns/message/MessageThread;->unread:I

    .line 1696
    invoke-virtual {p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_98
    .catchall {:try_start_6a .. :try_end_98} :catchall_a9

    move-result-object v1

    .line 1698
    :try_start_99
    invoke-direct {p0, p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->notifyThreadAdded(Lcom/lge/sns/message/MessageThread;)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a9
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_a0

    .line 1710
    :goto_9c
    :try_start_9c
    monitor-exit p0

    move-object v4, v1

    .line 1712
    goto/16 :goto_8

    .line 1699
    :catch_a0
    move-exception v3

    .line 1700
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "SNS"

    const-string v5, "notifyThreadAdded() - Throwable"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9c

    .line 1710
    .end local v2           #rowId:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catchall_a9
    move-exception v4

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_9c .. :try_end_ab} :catchall_a9

    throw v4

    .line 1703
    .restart local v2       #rowId:I
    :cond_ac
    :try_start_ac
    sget-object v4, Lcom/lge/sns/message/linkbook/MsgMngr;->THREAD_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_c8
    .catchall {:try_start_ac .. :try_end_c8} :catchall_a9

    move-result-object v1

    .line 1705
    :try_start_c9
    invoke-direct {p0, p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->notifyThreadUpdated(Lcom/lge/sns/message/MessageThread;)V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_a9
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_9c

    .line 1706
    :catch_cd
    move-exception v3

    .line 1707
    .restart local v3       #t:Ljava/lang/Throwable;
    :try_start_ce
    const-string v4, "SNS"

    const-string v5, "notifyThreadUpdated() - Throwable"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d5
    .catchall {:try_start_ce .. :try_end_d5} :catchall_a9

    goto :goto_9c
.end method

.method public updateThreads(Ljava/lang/String;Ljava/lang/String;)I
    .registers 34
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 1726
    const/16 v16, 0x0

    .line 1727
    .local v16, atomFeedContainer:Lcom/lge/newbay/client/AtomFeedContainer;
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getSnsManager()Lcom/lge/sns/SnsManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v28

    .line 1728
    .local v28, setting:Lcom/lge/sns/setting/ISettingFacade;
    invoke-interface/range {v28 .. v28}, Lcom/lge/sns/setting/ISettingFacade;->getMsgNum()I

    move-result v27

    .line 1729
    .local v27, pageSize:I
    invoke-interface/range {v28 .. v28}, Lcom/lge/sns/setting/ISettingFacade;->getMsgPer()I

    move-result v25

    .line 1730
    .local v25, maxMonthThread:I
    const/16 v26, 0x1

    .line 1731
    .local v26, pageNum:I
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v6, 0x0

    aput-object p1, v29, v6

    .line 1732
    .local v29, snsIds:[Ljava/lang/String;
    new-instance v23, Ljava/util/Date;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v23

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1733
    .local v23, from:Ljava/util/Date;
    new-instance v30, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v30

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1735
    .local v30, to:Ljava/util/Date;
    invoke-interface/range {v28 .. v28}, Lcom/lge/sns/setting/ISettingFacade;->getMsgNum()I

    move-result v6

    if-nez v6, :cond_3f

    .line 1736
    const/16 v27, 0x2710

    .line 1739
    :cond_3f
    if-eqz v25, :cond_53

    .line 1740
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 1741
    .local v18, cal:Ljava/util/Calendar;
    const/4 v6, 0x2

    mul-int/lit8 v7, v25, -0x1

    move-object/from16 v0, v18

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1742
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v23

    .line 1745
    .end local v18           #cal:Ljava/util/Calendar;
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/message/linkbook/MsgMngr;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/sns/message/linkbook/MsgMngr;->TIME_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/message/linkbook/MsgMngr;->createSelectStr2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1752
    .local v19, cursor:Landroid/database/Cursor;
    if-eqz v19, :cond_93

    .line 1754
    :try_start_6e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 1755
    const/4 v6, 0x3

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_90

    .line 1756
    const/4 v6, 0x3

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v23

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V
    :try_end_90
    .catchall {:try_start_6e .. :try_end_90} :catchall_a9

    .line 1759
    :cond_90
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1765
    :cond_93
    :try_start_93
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v5

    move-object/from16 v6, v29

    move/from16 v7, v26

    move/from16 v8, v27

    move-object/from16 v9, v23

    move-object/from16 v10, v30

    invoke-interface/range {v5 .. v10}, Lcom/lge/newbay/client/IMessage;->getMessageThreads([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    :try_end_a4
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_93 .. :try_end_a4} :catch_ae
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_93 .. :try_end_a4} :catch_d2
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_93 .. :try_end_a4} :catch_fd
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_93 .. :try_end_a4} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a4} :catch_13e

    move-result-object v16

    .line 1792
    :cond_a5
    :goto_a5
    if-nez v16, :cond_155

    const/4 v6, 0x0

    .line 1827
    :goto_a8
    return v6

    .line 1759
    :catchall_a9
    move-exception v6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1766
    :catch_ae
    move-exception v6

    move-object/from16 v20, v6

    .line 1767
    .local v20, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_b1
    const-string v6, "SNS"

    const-string v7, "getMessageThreads() - HttpUnauthorizatedException"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1768
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/message/linkbook/MsgMngr;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1769
    invoke-static {}, Lcom/lge/sns/message/linkbook/MsgMngr;->getMessage()Lcom/lge/newbay/client/IMessage;

    move-result-object v5

    move-object/from16 v6, v29

    move/from16 v7, v26

    move/from16 v8, v27

    move-object/from16 v9, v23

    move-object/from16 v10, v30

    invoke-interface/range {v5 .. v10}, Lcom/lge/newbay/client/IMessage;->getMessageThreads([Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    :try_end_d0
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_b1 .. :try_end_d0} :catch_d2
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_b1 .. :try_end_d0} :catch_e9
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_b1 .. :try_end_d0} :catch_fd
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_b1 .. :try_end_d0} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_d0} :catch_13e

    move-result-object v16

    goto :goto_a5

    .line 1771
    .end local v20           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_d2
    move-exception v6

    move-object/from16 v20, v6

    .line 1772
    .local v20, e:Lcom/lge/newbay/client/NewbayConnectException;
    const-string v6, "SNS"

    const-string v7, "getMessageThreads() - NewbayConnectException"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1773
    new-instance v6, Lcom/lge/sns/ServerConnectFail;

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1774
    .local v20, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_e9
    move-exception v6

    move-object/from16 v20, v6

    .line 1775
    const-string v6, "SNS"

    const-string v7, "getMessageThreads() - HttpUnauthorizatedException"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1776
    new-instance v6, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v6}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v6

    .line 1777
    .end local v20           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :catch_fd
    move-exception v6

    move-object/from16 v20, v6

    .line 1778
    .local v20, e:Lorg/apache/http/client/HttpResponseException;
    const-string v6, "SNS"

    const-string v7, "getMessageThreads() - HttpResponseException"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1779
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    const/16 v7, 0x191

    if-ne v6, v7, :cond_119

    .line 1780
    new-instance v6, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v6}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v6

    .line 1781
    :cond_119
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    const/16 v7, 0x130

    if-eq v6, v7, :cond_a5

    .line 1782
    new-instance v6, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v7

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1784
    .end local v20           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_12f
    move-exception v6

    move-object/from16 v20, v6

    .line 1785
    .local v20, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v6, "SNS"

    const-string v7, "getMessageThreads() - UnauthorizatedException"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1786
    throw v20

    .line 1787
    .end local v20           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_13e
    move-exception v6

    move-object/from16 v20, v6

    .line 1788
    .local v20, e:Ljava/lang/Exception;
    const-string v6, "SNS"

    const-string v7, "getMessageThreads() - Exception"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1789
    new-instance v6, Lcom/lge/sns/InvalidResponseException;

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1794
    .end local v20           #e:Ljava/lang/Exception;
    :cond_155
    invoke-virtual/range {v16 .. v16}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v22

    .line 1796
    .local v22, entryList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-nez v22, :cond_162

    .line 1797
    const/4 v6, 0x0

    goto/16 :goto_a8

    .line 1799
    :cond_162
    if-eqz v22, :cond_22d

    .line 1800
    const/16 v24, 0x0

    .local v24, location:I
    :goto_166
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v24

    move v1, v6

    if-ge v0, v1, :cond_20b

    .line 1801
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/lge/feed/atom/Entry;

    .line 1802
    .local v21, entry:Lcom/lge/feed/atom/Entry;
    invoke-virtual/range {v21 .. v21}, Lcom/lge/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/feed/atom/Person;

    invoke-virtual {v5}, Lcom/lge/feed/atom/Person;->getUri()Ljava/lang/String;

    move-result-object v17

    .line 1803
    .local v17, authorUri:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sns/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/user/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v9, v6, v7

    .line 1804
    .local v9, authorId:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "thread/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v8, v6, v7

    .line 1806
    .local v8, threadId:Ljava/lang/String;
    new-instance v5, Lcom/lge/sns/message/MessageThread;

    invoke-virtual/range {v21 .. v21}, Lcom/lge/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/feed/atom/Person;

    invoke-virtual {v6}, Lcom/lge/feed/atom/Person;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v21 .. v21}, Lcom/lge/feed/atom/Entry;->getTitleValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Lcom/lge/feed/atom/Entry;->getSummary()Lcom/lge/feed/atom/Content;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v21 .. v21}, Lcom/lge/feed/atom/Entry;->getUpdated()Ljava/util/Date;

    move-result-object v13

    invoke-virtual/range {v21 .. v21}, Lcom/lge/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object v14

    const/4 v15, 0x2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v15}, Lcom/lge/sns/message/MessageThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;I)V

    .line 1817
    .local v5, newThread:Lcom/lge/sns/message/MessageThread;
    invoke-virtual/range {p0 .. p2}, Lcom/lge/sns/message/linkbook/MsgMngr;->applySettingsToThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/sns/message/linkbook/MsgMngr;->updateThread(Lcom/lge/sns/message/MessageThread;)Landroid/net/Uri;

    .line 1800
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_166

    .line 1822
    .end local v5           #newThread:Lcom/lge/sns/message/MessageThread;
    .end local v8           #threadId:Ljava/lang/String;
    .end local v9           #authorId:Ljava/lang/String;
    .end local v17           #authorUri:Ljava/lang/String;
    .end local v21           #entry:Lcom/lge/feed/atom/Entry;
    :cond_20b
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_227

    .line 1823
    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/sns/message/linkbook/MsgMngr;->setUpdatedTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1824
    :cond_227
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v6

    goto/16 :goto_a8

    .line 1827
    .end local v24           #location:I
    :cond_22d
    const/4 v6, 0x0

    goto/16 :goto_a8
.end method
