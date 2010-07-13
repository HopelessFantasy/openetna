.class public Lcom/android/phone/SortedADNList$ADNItem;
.super Ljava/lang/Object;
.source "SortedADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SortedADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ADNItem"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/SortedADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/SortedADNList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "name"
    .parameter "number"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/SortedADNList$ADNItem;->this$0:Lcom/android/phone/SortedADNList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/android/phone/SortedADNList$ADNItem;->mName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/phone/SortedADNList$ADNItem;->mNumber:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/phone/SortedADNList$ADNItem;->mName:Ljava/lang/String;

    return-object v0
.end method
