.class public final Lcom/android/contacts/ShowOrCreateActivity;
.super Landroid/app/Activity;
.source "ShowOrCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;,
        Lcom/android/contacts/ShowOrCreateActivity$IntentClickListener;
    }
.end annotation


# static fields
.field static final LOGD:Z = false

.field static final PEOPLE_PROJECTION:[Ljava/lang/String; = null

.field static final PERSON_ID_INDEX:I = 0x0

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final QUERY_KIND_EMAIL_OR_IM:Ljava/lang/String; = "kind IN (1,3)"

.field static final QUERY_TOKEN:I = 0x2a

.field static final SCHEME_MAILTO:Ljava/lang/String; = "mailto"

.field static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field static final TAG:Ljava/lang/String; = "ShowOrCreateActivity"


# instance fields
.field private mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/ShowOrCreateActivity;->PEOPLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 179
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 25
    .parameter "icicle"

    .prologue
    .line 84
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    move-object v3, v0

    if-nez v3, :cond_a5

    .line 88
    new-instance v3, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;-><init>(Landroid/app/Activity;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    .line 93
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 94
    .local v19, intent:Landroid/content/Intent;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 97
    .local v18, data:Landroid/net/Uri;
    const/16 v21, 0x0

    .line 98
    .local v21, scheme:Ljava/lang/String;
    const/16 v22, 0x0

    .line 99
    .local v22, ssp:Ljava/lang/String;
    if-eqz v18, :cond_2d

    .line 100
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    .line 101
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v22

    .line 105
    :cond_2d
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v16, createExtras:Landroid/os/Bundle;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 107
    .local v20, originalExtras:Landroid/os/Bundle;
    if-eqz v20, :cond_3f

    .line 108
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 110
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->setCreateExtras(Landroid/os/Bundle;)V

    .line 113
    const-string v3, "com.android.contacts.action.CREATE_DESCRIPTION"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 114
    .local v15, createDescrip:Ljava/lang/String;
    if-nez v15, :cond_57

    .line 115
    move-object/from16 v15, v22

    .line 117
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    move-object v3, v0

    invoke-virtual {v3, v15}, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->setCreateDescription(Ljava/lang/String;)V

    .line 120
    const-string v3, "com.android.contacts.action.FORCE_CREATE"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 121
    .local v17, createForce:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->setCreateForce(Z)V

    .line 124
    const-string v3, "mailto"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 125
    const-string v3, "email"

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v3, Landroid/provider/Contacts$People;->WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 127
    .local v6, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    move-object v3, v0

    const/16 v4, 0x2a

    const/4 v5, 0x0

    sget-object v7, Lcom/android/contacts/ShowOrCreateActivity;->PEOPLE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v6           #uri:Landroid/net/Uri;
    :goto_a4
    return-void

    .line 90
    .end local v15           #createDescrip:Ljava/lang/String;
    .end local v16           #createExtras:Landroid/os/Bundle;
    .end local v17           #createForce:Z
    .end local v18           #data:Landroid/net/Uri;
    .end local v19           #intent:Landroid/content/Intent;
    .end local v20           #originalExtras:Landroid/os/Bundle;
    .end local v21           #scheme:Ljava/lang/String;
    .end local v22           #ssp:Ljava/lang/String;
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    move-object v3, v0

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->cancelOperation(I)V

    goto/16 :goto_17

    .line 129
    .restart local v15       #createDescrip:Ljava/lang/String;
    .restart local v16       #createExtras:Landroid/os/Bundle;
    .restart local v17       #createForce:Z
    .restart local v18       #data:Landroid/net/Uri;
    .restart local v19       #intent:Landroid/content/Intent;
    .restart local v20       #originalExtras:Landroid/os/Bundle;
    .restart local v21       #scheme:Ljava/lang/String;
    .restart local v22       #ssp:Ljava/lang/String;
    :cond_b1
    const-string v3, "tel"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 130
    const-string v3, "phone"

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    move-object v7, v0

    const/16 v8, 0x2a

    const/4 v9, 0x0

    sget-object v3, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Lcom/android/contacts/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    .line 136
    :cond_e0
    const-string v3, "ShowOrCreateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ShowOrCreateActivity;->finish()V

    goto :goto_a4
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 144
    iget-object v0, p0, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    if-eqz v0, :cond_e

    .line 145
    iget-object v0, p0, Lcom/android/contacts/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/contacts/ShowOrCreateActivity$QueryHandler;->cancelOperation(I)V

    .line 147
    :cond_e
    return-void
.end method
