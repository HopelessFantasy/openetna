.class public Lcom/android/LGSetupWizard/SetupWelcome;
.super Landroid/app/Activity;
.source "SetupWelcome.java"


# instance fields
.field private mHomeIntent:Landroid/content/Intent;

.field private mPm:Landroid/content/pm/PackageManager;

.field private welcome_info_txt:Landroid/widget/TextView;

.field private welcome_note_txt:Landroid/widget/TextView;

.field private wizard_continue:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const v7, 0x7f040009

    const v6, 0x7f040008

    const/4 v5, 0x1

    const v4, 0x7f050003

    const v3, 0x7f050002

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->mPm:Landroid/content/pm/PackageManager;

    .line 54
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, mOpCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, mCountryCode:Ljava/lang/String;
    const-string v2, "ORG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 59
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->setOrangeHome()V

    .line 70
    :cond_29
    :goto_29
    invoke-virtual {p0, v5}, Lcom/android/LGSetupWizard/SetupWelcome;->requestWindowFeature(I)Z

    .line 71
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/android/LGSetupWizard/SetupWelcome;->setContentView(I)V

    .line 76
    const-string v2, "RGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 78
    invoke-virtual {p0, v3}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    .line 79
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    const v3, 0x7f040006

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 81
    invoke-virtual {p0, v4}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    .line 82
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    const v3, 0x7f040007

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    :goto_5a
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "DATETIME_AUTO_DATE_TIME_I"

    invoke-static {v4, v5}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_12_24"

    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "DATETIME_HOUR_FORMAT_12_24_I"

    invoke-static {v4, v5}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "DATETIME_DATE_FORMAT_I"

    invoke-static {v4, v5}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->wizard_continue:Landroid/widget/Button;

    .line 155
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->wizard_continue:Landroid/widget/Button;

    new-instance v3, Lcom/android/LGSetupWizard/SetupWelcome$1;

    invoke-direct {v3, p0}, Lcom/android/LGSetupWizard/SetupWelcome$1;-><init>(Lcom/android/LGSetupWizard/SetupWelcome;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void

    .line 61
    :cond_b2
    const-string v2, "RGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 63
    invoke-virtual {p0, v5}, Lcom/android/LGSetupWizard/SetupWelcome;->setHome(I)V

    goto/16 :goto_29

    .line 65
    :cond_bf
    const-string v2, "BYT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 67
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/LGSetupWizard/SetupWelcome;->setHome(I)V

    goto/16 :goto_29

    .line 85
    :cond_cd
    const-string v2, "MX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_dd

    const-string v2, "BR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 88
    :cond_dd
    invoke-virtual {p0, v3}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    const v3, 0x7f040004

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    const v3, 0x7f040005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5a

    .line 94
    :cond_ff
    const-string v2, "TLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5a

    .line 103
    :cond_123
    const-string v2, "CL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_133

    const-string v2, "GT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 106
    :cond_133
    invoke-virtual {p0, v3}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    .line 107
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 109
    invoke-virtual {p0, v4}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5a

    .line 112
    :cond_14f
    const-string v2, "KTF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    .line 116
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    const v3, 0x7f04000a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 118
    invoke-virtual {p0, v4}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    .line 119
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    const v3, 0x7f04000b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5a

    .line 123
    :cond_179
    invoke-virtual {p0, v3}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    .line 124
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_note_txt:Landroid/widget/TextView;

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 126
    invoke-virtual {p0, v4}, Lcom/android/LGSetupWizard/SetupWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    .line 127
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->welcome_info_txt:Landroid/widget/TextView;

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5a
.end method

.method public removeActivity()V
    .registers 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 43
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/LGSetupWizard/SetupWelcome;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, name:Landroid/content/ComponentName;
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 47
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/SetupWelcome;->finish()V

    .line 48
    return-void
.end method

.method public setHome(I)V
    .registers 8
    .parameter "type"

    .prologue
    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 209
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x2

    new-array v1, v2, [Landroid/content/ComponentName;

    .line 212
    .local v1, set:[Landroid/content/ComponentName;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.launcher"

    const-string v5, "com.android.launcher.Launcher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 213
    const/4 v2, 0x1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.lge.homecube"

    const-string v5, "com.lge.homecube.Launcher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 214
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->mPm:Landroid/content/pm/PackageManager;

    const v3, 0x108000

    aget-object v4, v1, p1

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 215
    return-void
.end method

.method public setOrangeHome()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 194
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 196
    const/4 v2, 0x3

    new-array v1, v2, [Landroid/content/ComponentName;

    .line 197
    .local v1, set:[Landroid/content/ComponentName;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.launcher"

    const-string v5, "com.android.launcher.Launcher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 198
    const/4 v2, 0x1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.lge.homecube"

    const-string v5, "com.lge.homecube.Launcher"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 199
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.orange.zhai"

    const-string v4, "com.orange.zhai.Main"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    .line 200
    iget-object v2, p0, Lcom/android/LGSetupWizard/SetupWelcome;->mPm:Landroid/content/pm/PackageManager;

    const v3, 0x108000

    aget-object v4, v1, v6

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 201
    return-void
.end method
