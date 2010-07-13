.class Lcom/android/browser/MostVisitedActivity$IconReceiver;
.super Ljava/lang/Object;
.source "MostVisitedActivity.java"

# interfaces
.implements Landroid/webkit/WebIconDatabase$IconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MostVisitedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MostVisitedActivity;


# direct methods
.method private constructor <init>(Lcom/android/browser/MostVisitedActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/browser/MostVisitedActivity$IconReceiver;->this$0:Lcom/android/browser/MostVisitedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/MostVisitedActivity;Lcom/android/browser/MostVisitedActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/browser/MostVisitedActivity$IconReceiver;-><init>(Lcom/android/browser/MostVisitedActivity;)V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/browser/MostVisitedActivity$IconReceiver;->this$0:Lcom/android/browser/MostVisitedActivity;

    iget-object v1, p0, Lcom/android/browser/MostVisitedActivity$IconReceiver;->this$0:Lcom/android/browser/MostVisitedActivity;

    invoke-static {v1}, Lcom/android/browser/MostVisitedActivity;->access$100(Lcom/android/browser/MostVisitedActivity;)Lcom/android/browser/MostVisitedActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/MostVisitedActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method
