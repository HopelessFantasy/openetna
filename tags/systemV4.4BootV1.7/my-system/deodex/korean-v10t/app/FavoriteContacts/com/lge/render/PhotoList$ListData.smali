.class Lcom/lge/render/PhotoList$ListData;
.super Ljava/lang/Object;
.source "PhotoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/render/PhotoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListData"
.end annotation


# instance fields
.field private m_m_Next:Lcom/lge/render/PhotoList$ListData;

.field private m_m_Prev:Lcom/lge/render/PhotoList$ListData;

.field private m_m_iID:J

.field private m_m_iPosition:J

.field private m_m_lGNId:J

.field final synthetic this$0:Lcom/lge/render/PhotoList;


# direct methods
.method public constructor <init>(Lcom/lge/render/PhotoList;JJJ)V
    .registers 8
    .parameter
    .parameter "id"
    .parameter "position"
    .parameter "GMid"

    .prologue
    .line 892
    iput-object p1, p0, Lcom/lge/render/PhotoList$ListData;->this$0:Lcom/lge/render/PhotoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-wide p2, p0, Lcom/lge/render/PhotoList$ListData;->m_m_iID:J

    .line 894
    iput-wide p4, p0, Lcom/lge/render/PhotoList$ListData;->m_m_iPosition:J

    .line 895
    iput-wide p6, p0, Lcom/lge/render/PhotoList$ListData;->m_m_lGNId:J

    .line 896
    return-void
.end method

.method static synthetic access$000(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/lge/render/PhotoList$ListData;->m_m_Next:Lcom/lge/render/PhotoList$ListData;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/render/PhotoList$ListData;Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 884
    iput-object p1, p0, Lcom/lge/render/PhotoList$ListData;->m_m_Next:Lcom/lge/render/PhotoList$ListData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/lge/render/PhotoList$ListData;->m_m_Prev:Lcom/lge/render/PhotoList$ListData;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/render/PhotoList$ListData;Lcom/lge/render/PhotoList$ListData;)Lcom/lge/render/PhotoList$ListData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 884
    iput-object p1, p0, Lcom/lge/render/PhotoList$ListData;->m_m_Prev:Lcom/lge/render/PhotoList$ListData;

    return-object p1
.end method


# virtual methods
.method public getGMId()J
    .registers 3

    .prologue
    .line 919
    iget-wide v0, p0, Lcom/lge/render/PhotoList$ListData;->m_m_lGNId:J

    return-wide v0
.end method

.method public getID()J
    .registers 3

    .prologue
    .line 903
    iget-wide v0, p0, Lcom/lge/render/PhotoList$ListData;->m_m_iID:J

    return-wide v0
.end method

.method public getNext()Lcom/lge/render/PhotoList$ListData;
    .registers 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/lge/render/PhotoList$ListData;->m_m_Next:Lcom/lge/render/PhotoList$ListData;

    return-object v0
.end method

.method public getPostion()J
    .registers 3

    .prologue
    .line 911
    iget-wide v0, p0, Lcom/lge/render/PhotoList$ListData;->m_m_iPosition:J

    return-wide v0
.end method

.method public getPrev()Lcom/lge/render/PhotoList$ListData;
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/lge/render/PhotoList$ListData;->m_m_Prev:Lcom/lge/render/PhotoList$ListData;

    return-object v0
.end method

.method public setGMId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 915
    iput-wide p1, p0, Lcom/lge/render/PhotoList$ListData;->m_m_lGNId:J

    .line 916
    return-void
.end method

.method public setID(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 899
    iput-wide p1, p0, Lcom/lge/render/PhotoList$ListData;->m_m_iID:J

    .line 900
    return-void
.end method

.method public setNext(Lcom/lge/render/PhotoList$ListData;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 923
    iput-object p1, p0, Lcom/lge/render/PhotoList$ListData;->m_m_Next:Lcom/lge/render/PhotoList$ListData;

    .line 924
    return-void
.end method

.method public setPostion(J)V
    .registers 3
    .parameter "position"

    .prologue
    .line 907
    iput-wide p1, p0, Lcom/lge/render/PhotoList$ListData;->m_m_iPosition:J

    .line 908
    return-void
.end method

.method public setPrev(Lcom/lge/render/PhotoList$ListData;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 931
    iput-object p1, p0, Lcom/lge/render/PhotoList$ListData;->m_m_Prev:Lcom/lge/render/PhotoList$ListData;

    .line 932
    return-void
.end method
