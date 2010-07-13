.class public Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;
.super Landroid/app/Activity;
.source "ExternalMemoryTest.java"


# instance fields
.field public textTestResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public WriteToFile()Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 77
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 78
    .local v2, root:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 81
    new-instance v4, Ljava/io/File;

    const-string v6, "SDTest.txt"

    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v4, txtfile:Ljava/io/File;
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 83
    .local v5, txtwriter:Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 84
    .local v1, out:Ljava/io/BufferedWriter;
    const-string v6, "Hello world"

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move v6, v7

    .line 103
    .end local v1           #out:Ljava/io/BufferedWriter;
    .end local v2           #root:Ljava/io/File;
    .end local v4           #txtfile:Ljava/io/File;
    .end local v5           #txtwriter:Ljava/io/FileWriter;
    :goto_2e
    return v6

    .line 92
    .restart local v2       #root:Ljava/io/File;
    :cond_2f
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TEST::WriteToFile::cannotWrite"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 93
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_52} :catch_54
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_52} :catch_5b

    move v6, v9

    .line 94
    goto :goto_2e

    .line 96
    .end local v2           #root:Ljava/io/File;
    .end local v3           #toast:Landroid/widget/Toast;
    :catch_54
    move-exception v6

    move-object v0, v6

    .line 97
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move v6, v9

    .line 98
    goto :goto_2e

    .line 99
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_5b
    move-exception v6

    move-object v0, v6

    .line 100
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move v6, v9

    .line 101
    goto :goto_2e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->setContentView(I)V

    .line 45
    const v3, 0x7f070061

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->textTestResult:Landroid/widget/TextView;

    .line 46
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 49
    .local v1, path:Ljava/io/File;
    const v3, 0x7f070062

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    .local v0, onButton:Landroid/widget/Button;
    new-instance v3, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;

    invoke-direct {v3, p0, v2}, Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/ExternalMemoryTest;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 109
    return-void
.end method
