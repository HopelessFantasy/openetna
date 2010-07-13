.class public Lcom/lge/ota/OpeningDayActivity;
.super Landroid/app/Activity;
.source "OpeningDayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KTRegiActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const-string v7, "/lgdrm/Openday"

    const-string v8, "KTRegiActivity"

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v6, 0x7f020001

    invoke-virtual {p0, v6}, Lcom/lge/ota/OpeningDayActivity;->setContentView(I)V

    .line 24
    const v6, 0x7f040004

    invoke-virtual {p0, v6}, Lcom/lge/ota/OpeningDayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 26
    .local v4, mText:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 28
    .local v5, value:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v6, "/lgdrm/Openday"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 33
    :try_start_24
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/lgdrm/Openday"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 34
    .local v3, in:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_37} :catch_3b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_37} :catch_5b

    .line 54
    .end local v3           #in:Ljava/io/BufferedReader;
    :goto_37
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_3a
    return-void

    .line 37
    :catch_3b
    move-exception v6

    move-object v0, v6

    .line 39
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "KTRegiActivity"

    const-string v6, "read failed: FileNotFoundException"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :try_start_44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "chmod 666 /lgdrm/Openday"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_37

    .line 44
    :catch_4e
    move-exception v6

    move-object v1, v6

    .line 46
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "KTRegiActivity"

    const-string v6, "chmod failed: IOException"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 50
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #e1:Ljava/io/IOException;
    :catch_5b
    move-exception v6

    move-object v0, v6

    .line 52
    .local v0, e:Ljava/io/IOException;
    const-string v6, "KTRegiActivity"

    const-string v6, "read failed: IOException"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 58
    .end local v0           #e:Ljava/io/IOException;
    :cond_65
    const v6, 0x7f03000b

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3a
.end method
