.class public Lcom/google/wireless/gdata/spreadsheets/data/ListFeed;
.super Lcom/google/wireless/gdata/data/Feed;
.source "ListFeed.java"


# instance fields
.field private editUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Feed;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getEditUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListFeed;->editUri:Ljava/lang/String;

    return-object v0
.end method

.method public setEditUri(Ljava/lang/String;)V
    .registers 2
    .parameter "editUri"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListFeed;->editUri:Ljava/lang/String;

    .line 34
    return-void
.end method
