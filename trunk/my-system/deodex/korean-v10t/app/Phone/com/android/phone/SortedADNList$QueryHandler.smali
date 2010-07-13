.class Lcom/android/phone/SortedADNList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SortedADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SortedADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SortedADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/SortedADNList;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/phone/SortedADNList$QueryHandler;->this$0:Lcom/android/phone/SortedADNList;

    .line 258
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 259
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/phone/SortedADNList$QueryHandler;->this$0:Lcom/android/phone/SortedADNList;

    invoke-static {v0}, Lcom/android/phone/SortedADNList;->access$200(Lcom/android/phone/SortedADNList;)V

    .line 286
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/phone/SortedADNList$QueryHandler;->this$0:Lcom/android/phone/SortedADNList;

    invoke-static {v0}, Lcom/android/phone/SortedADNList;->access$200(Lcom/android/phone/SortedADNList;)V

    .line 274
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/phone/SortedADNList$QueryHandler;->this$0:Lcom/android/phone/SortedADNList;

    iput-object p3, v0, Lcom/android/phone/SortedADNList;->mCursor:Landroid/database/Cursor;

    .line 265
    iget-object v0, p0, Lcom/android/phone/SortedADNList$QueryHandler;->this$0:Lcom/android/phone/SortedADNList;

    invoke-static {v0}, Lcom/android/phone/SortedADNList;->access$000(Lcom/android/phone/SortedADNList;)V

    .line 266
    iget-object v0, p0, Lcom/android/phone/SortedADNList$QueryHandler;->this$0:Lcom/android/phone/SortedADNList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SortedADNList;->access$100(Lcom/android/phone/SortedADNList;Z)V

    .line 267
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/SortedADNList$QueryHandler;->this$0:Lcom/android/phone/SortedADNList;

    invoke-static {v0}, Lcom/android/phone/SortedADNList;->access$200(Lcom/android/phone/SortedADNList;)V

    .line 280
    return-void
.end method
