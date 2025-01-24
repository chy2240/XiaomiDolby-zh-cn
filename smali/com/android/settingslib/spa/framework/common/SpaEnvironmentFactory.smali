.class public final Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;
.super Ljava/lang/Object;
.source "SpaEnvironment.kt"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;

    invoke-direct {v0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->INSTANCE:Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;

    const/16 v0, 0x8

    sput v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;
    .locals 1

    .line 60
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spa environment is not set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
