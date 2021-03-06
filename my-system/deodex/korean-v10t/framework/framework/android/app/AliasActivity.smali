.class public Landroid/app/AliasActivity;
.super Landroid/app/Activity;
.source "AliasActivity.java"


# instance fields
.field public final ALIAS_META_DATA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const-string v0, "android.app.alias"

    iput-object v0, p0, Landroid/app/AliasActivity;->ALIAS_META_DATA:Ljava/lang/String;

    return-void
.end method

.method private parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 88
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 90
    .local v0, attrs:Landroid/util/AttributeSet;
    const/4 v2, 0x0

    .line 94
    .local v2, intent:Landroid/content/Intent;
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v7, :cond_10

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 97
    :cond_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, nodeName:Ljava/lang/String;
    const-string v6, "alias"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 99
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alias meta-data must start with <alias> tag; found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    :cond_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 106
    .local v4, outerDepth:I
    :cond_47
    :goto_47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_76

    if-ne v5, v8, :cond_55

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_76

    .line 107
    :cond_55
    if-eq v5, v8, :cond_47

    const/4 v6, 0x4

    if-eq v5, v6, :cond_47

    .line 111
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 112
    const-string v6, "intent"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 113
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1, v0}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, gotIntent:Landroid/content/Intent;
    if-nez v2, :cond_47

    move-object v2, v1

    goto :goto_47

    .line 116
    .end local v1           #gotIntent:Landroid/content/Intent;
    :cond_72
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_47

    .line 120
    :cond_76
    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "Error parsing alias"

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v3, 0x0

    .line 57
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    :try_start_6
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/AliasActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 59
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.app.alias"

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 61
    if-nez v3, :cond_39

    .line 62
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Alias requires a meta-data field android.app.alias"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_28} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_28} :catch_47
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_5d

    .line 75
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_28
    move-exception v4

    move-object v1, v4

    .line 76
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error parsing alias"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 82
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_32
    move-exception v4

    if-eqz v3, :cond_38

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_38
    throw v4

    .line 66
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_39
    :try_start_39
    invoke-direct {p0, v3}, Landroid/app/AliasActivity;->parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v2

    .line 67
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_51

    .line 68
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No <intent> tag found in alias description"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_47} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_47} :catch_47
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_47} :catch_5d

    .line 77
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_47
    move-exception v4

    move-object v1, v4

    .line 78
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_49
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error parsing alias"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_32

    .line 72
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_51
    :try_start_51
    invoke-virtual {p0, v2}, Landroid/app/AliasActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/AliasActivity;->finish()V
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_57} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_57} :catch_47
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_5d

    .line 82
    if-eqz v3, :cond_5c

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 84
    :cond_5c
    return-void

    .line 79
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_5d
    move-exception v4

    move-object v1, v4

    .line 80
    .local v1, e:Ljava/io/IOException;
    :try_start_5f
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error parsing alias"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_32
.end method
