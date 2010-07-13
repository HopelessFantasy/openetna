.class final Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RecentCallsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecentCallsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RecentCallsAdapter"
.end annotation


# static fields
.field private static final REDRAW:I = 0x1

.field private static final START_THREAD:I = 0x2


# instance fields
.field private mCallerIdThread:Ljava/lang/Thread;

.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/RecentCallsListActivity$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z

.field private mDrawableIncoming:Landroid/graphics/drawable/Drawable;

.field private mDrawableMissed:Landroid/graphics/drawable/Drawable;

.field private mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mLabelArray:[Ljava/lang/CharSequence;

.field private mLoading:Z

.field mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/RecentCallsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/RecentCallsListActivity;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 232
    iput-object p1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    .line 233
    const v0, 0x7f03002a

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLoading:Z

    .line 218
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;-><init>(Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 236
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    .line 237
    iput-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 248
    invoke-virtual {p1}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    .line 250
    invoke-virtual {p1}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-virtual {p1}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    .line 255
    invoke-virtual {p1}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    .line 256
    return-void
.end method

.method private enqueueRequest(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .parameter "number"
    .parameter "position"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"

    .prologue
    .line 340
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;

    invoke-direct {v0}, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;-><init>()V

    .line 341
    .local v0, ciq:Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;
    iput-object p1, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    .line 342
    iput p2, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->position:I

    .line 343
    iput-object p3, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->name:Ljava/lang/String;

    .line 344
    iput p4, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->numberType:I

    .line 345
    iput-object p5, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->numberLabel:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 347
    :try_start_12
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private queryContactInfo(Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;)V
    .registers 11
    .parameter "ciq"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 361
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v8, :cond_1a

    iget-object v0, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    iget-object v1, v1, Lcom/android/contacts/RecentCallsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 363
    :cond_1a
    const-string v0, "RecentCallsList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DONT UPDATE!! ciq.number := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ::: mVoiceMailNumber :="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    iget-object v2, v2, Lcom/android/contacts/RecentCallsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_42
    :goto_42
    return-void

    .line 374
    :cond_43
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .line 375
    .local v6, info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    if-eqz v6, :cond_6e

    sget-object v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    if-eq v6, v0, :cond_6e

    .line 376
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 377
    :try_start_56
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 378
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 380
    :cond_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_6b

    .line 415
    :cond_65
    :goto_65
    if-eqz v6, :cond_42

    .line 416
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->updateCallLog(Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;Lcom/android/contacts/RecentCallsListActivity$ContactInfo;)V

    goto :goto_42

    .line 380
    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v1

    .line 382
    :cond_6e
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/RecentCallsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 387
    .local v7, phonesCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_65

    .line 388
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 389
    new-instance v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .end local v6           #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    invoke-direct {v6}, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;-><init>()V

    .line 390
    .restart local v6       #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->personId:J

    .line 391
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    .line 392
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    .line 393
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    .line 394
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    .line 396
    iget-object v0, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 397
    iget-object v0, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    .line 402
    :cond_c3
    iput-object v3, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 407
    :try_start_cf
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 408
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    :cond_dd
    monitor-exit v0
    :try_end_de
    .catchall {:try_start_cf .. :try_end_de} :catchall_e2

    .line 412
    :cond_de
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_65

    .line 410
    :catchall_e2
    move-exception v1

    :try_start_e3
    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v1
.end method

.method private updateCallLog(Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;Lcom/android/contacts/RecentCallsListActivity$ContactInfo;)V
    .registers 8
    .parameter "ciq"
    .parameter "ci"

    .prologue
    .line 304
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_19

    iget-object v1, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    iget-object v2, v2, Lcom/android/contacts/RecentCallsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 336
    :cond_19
    :goto_19
    return-void

    .line 317
    :cond_1a
    iget v1, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->numberType:I

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_24

    sget-object v1, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    if-eq p2, v1, :cond_19

    .line 324
    :cond_24
    iget-object v1, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->numberLabel:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget v1, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->numberType:I

    iget v2, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    if-eq v1, v2, :cond_19

    .line 329
    :cond_3e
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 330
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    iget-object v2, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v1, "numbertype"

    iget v2, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v1, "numberlabel"

    iget-object v2, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    invoke-virtual {v1}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_19
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 31
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;

    .line 479
    .local v26, views:Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, number:Ljava/lang/String;
    const/16 v19, 0x0

    .line 481
    .local v19, formattedNumber:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 482
    .local v7, callerName:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 483
    .local v8, callerNumberType:I
    const/4 v4, 0x7

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, callerNumberLabel:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .line 490
    .local v20, info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    if-nez v20, :cond_17b

    .line 493
    sget-object v20, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->enqueueRequest(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 522
    :cond_54
    :goto_54
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 523
    .local v22, name:Ljava/lang/String;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    move/from16 v23, v0

    .line 524
    .local v23, ntype:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 528
    .local v21, label:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 529
    move-object/from16 v22, v7

    .line 530
    move/from16 v23, v8

    .line 531
    move-object/from16 v21, v9

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    invoke-static {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->access$000(Lcom/android/contacts/RecentCallsListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 537
    :cond_81
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_208

    .line 538
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->line1View:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    const/16 v24, 0x0

    .line 544
    .local v24, numberLabel:Ljava/lang/CharSequence;
    const/16 v4, 0x3e7

    move/from16 v0, v23

    move v1, v4

    if-ne v0, v1, :cond_1ea

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    move-object v4, v0

    const/4 v6, 0x6

    aget-object v24, v4, v6

    .line 549
    :goto_ac
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 553
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1fc

    .line 554
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    .end local v24           #numberLabel:Ljava/lang/CharSequence;
    :goto_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/contacts/RecentCallsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_118

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const v5, 0x7f06006e

    invoke-virtual {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .line 594
    .restart local v5       #number:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->line1View:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    :cond_118
    const/4 v4, 0x4

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 601
    .local v25, type:I
    const/4 v4, 0x2

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 603
    .local v10, date:J
    const/4 v4, 0x3

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 607
    .local v17, duration:J
    const/high16 v16, 0x4

    .line 609
    .local v16, flags:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->dateView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0xea60

    invoke-static/range {v10 .. v16}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5           #number:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->durationView:Landroid/widget/TextView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v5, v0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v6, v0

    invoke-static {v5, v6}, Lcom/android/contacts/RecentCallsListActivity;->access$100(Lcom/android/contacts/RecentCallsListActivity;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    packed-switch v25, :pswitch_data_2c0

    .line 632
    :goto_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object v4, v0

    if-nez v4, :cond_17a

    .line 633
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mFirst:Z

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 637
    :cond_17a
    return-void

    .line 497
    .end local v10           #date:J
    .end local v16           #flags:I
    .end local v17           #duration:J
    .end local v21           #label:Ljava/lang/String;
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #ntype:I
    .end local v25           #type:I
    .restart local v5       #number:Ljava/lang/String;
    :cond_17b
    sget-object v4, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    move-object/from16 v0, v20

    move-object v1, v4

    if-eq v0, v1, :cond_54

    .line 502
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a2

    .line 503
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    move-object v5, v0

    .end local v5           #number:Ljava/lang/String;
    move-object/from16 v0, p3

    move v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->updateString(ILjava/lang/String;)Z

    .line 504
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 507
    .restart local v5       #number:Ljava/lang/String;
    :cond_1a2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1bf

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    move v4, v0

    if-ne v4, v8, :cond_1bf

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c8

    .line 511
    :cond_1bf
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->enqueueRequest(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 516
    :cond_1c8
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_1e2

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v4, v6}, Lcom/android/contacts/RecentCallsListActivity;->access$000(Lcom/android/contacts/RecentCallsListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 519
    :cond_1e2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_54

    .line 547
    .restart local v21       #label:Ljava/lang/String;
    .restart local v22       #name:Ljava/lang/String;
    .restart local v23       #ntype:I
    .restart local v24       #numberLabel:Ljava/lang/CharSequence;
    :cond_1ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v21

    move-object v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    goto/16 :goto_ac

    .line 557
    :cond_1fc
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e3

    .line 561
    .end local v24           #numberLabel:Ljava/lang/CharSequence;
    :cond_208
    const-string v4, "-1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_243

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const v5, 0x7f06006f

    invoke-virtual {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .line 564
    .restart local v5       #number:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 585
    :goto_225
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->line1View:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e3

    .line 565
    :cond_243
    const-string v4, "-2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_261

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const v5, 0x7f060070

    invoke-virtual {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .line 567
    .restart local v5       #number:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_225

    .line 568
    :cond_261
    const-string v4, "-3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27f

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const v5, 0x7f060071

    invoke-virtual {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .line 570
    .restart local v5       #number:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_225

    .line 581
    :cond_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    invoke-static {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->access$000(Lcom/android/contacts/RecentCallsListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 582
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_225

    .line 619
    .end local v5           #number:Ljava/lang/String;
    .restart local v10       #date:J
    .restart local v16       #flags:I
    .restart local v17       #duration:J
    .restart local v25       #type:I
    :pswitch_292
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->iconView:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_15d

    .line 623
    :pswitch_2a1
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->iconView:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_15d

    .line 627
    :pswitch_2b0
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->iconView:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_15d

    .line 617
    nop

    :pswitch_data_2c0
    .packed-switch 0x1
        :pswitch_292
        :pswitch_2a1
        :pswitch_2b0
    .end packed-switch
.end method

.method public clearCache()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    .registers 3
    .parameter "number"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    return-object p0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLoading:Z

    if-eqz v0, :cond_6

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    .line 446
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 449
    .local v1, view:Landroid/view/View;
    new-instance v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;

    invoke-direct {v2}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;-><init>()V

    .line 450
    .local v2, views:Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;
    const v3, 0x7f050045

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->line1View:Landroid/widget/TextView;

    .line 451
    const v3, 0x7f050007

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    .line 452
    const v3, 0x7f050008

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    .line 453
    const v3, 0x7f050044

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->dateView:Landroid/widget/TextView;

    .line 455
    const v3, 0x7f050004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->durationView:Landroid/widget/TextView;

    .line 456
    const v3, 0x7f05000f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    .line 458
    const v3, 0x7f050043

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->iconView:Landroid/widget/ImageView;

    .line 460
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, number:Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 463
    iget-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 467
    :goto_67
    iget-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 471
    return-object v1

    .line 465
    :cond_70
    iget-object v3, v2, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_67
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 205
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    .local v1, telUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v1           #telUri:Landroid/net/Uri;
    :cond_1f
    return-void
.end method

.method public onPreDraw()Z
    .registers 5

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mFirst:Z

    if-eqz v0, :cond_f

    .line 212
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mFirst:Z

    .line 215
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 7

    .prologue
    .line 425
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDone:Z

    if-nez v2, :cond_2e

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, ciq:Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;
    iget-object v3, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v3

    .line 428
    :try_start_8
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 429
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;

    move-object v1, v0

    .line 437
    :goto_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2b

    .line 438
    if-eqz v1, :cond_0

    .line 439
    invoke-direct {p0, v1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->queryContactInfo(Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;)V

    goto :goto_0

    .line 432
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2b
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_1a

    .line 433
    :catch_29
    move-exception v2

    goto :goto_1a

    .line 437
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    .line 442
    .end local v1           #ciq:Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;
    :cond_2e
    return-void
.end method

.method setLoading(Z)V
    .registers 2
    .parameter "loading"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLoading:Z

    .line 260
    return-void
.end method

.method public startRequestProcessing()V
    .registers 3

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDone:Z

    .line 278
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 279
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 280
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 281
    return-void
.end method

.method public stopRequestProcessing()V
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDone:Z

    .line 285
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 286
    :cond_c
    return-void
.end method
