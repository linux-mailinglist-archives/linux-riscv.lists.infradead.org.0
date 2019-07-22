Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD4E7012D
	for <lists+linux-riscv@lfdr.de>; Mon, 22 Jul 2019 15:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yUubcPGMPlRK3aW+aPfvuZx4JExYDoq3XVqn+ljRb0=; b=qs67C+4finG5OA
	TGNohdMW11p/eGoEotBT7dBN/PLwzB2WMTvNuTv2JNUqjhMwhby/nbHm2FWU7QpHbvSR9cXA6ldiS
	jZv4u9/5QXuyJrmBwuCcwTz+U9s/aP2l3VndRNLEZ+EhGgO4Nx2N/rL0wvFgcCzDpe7/ee4KAZcJJ
	+9eejg57cslrxsCv5Fz1w3kBblAUVwsDbhDNO+AWNlXXPbQqcTGRKKp1a1IAVskDzghxZzgHlxv8u
	1hRglsqz5y+UbDYM3SsaCkprF4NzqlDEuEkqSUyVfl//gvpEXJqEuIKZLkJ3BIA/WLW5CRwQLv1On
	VYqAtQ0krOMbm/VVXarA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYTb-0005uO-5C; Mon, 22 Jul 2019 13:35:39 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYTV-0005tt-Jg
 for linux-riscv@lists.infradead.org; Mon, 22 Jul 2019 13:35:35 +0000
Received: by mail-ed1-x542.google.com with SMTP id p15so40615118eds.8
 for <linux-riscv@lists.infradead.org>; Mon, 22 Jul 2019 06:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4vYOhRUIOXK8MxeH6VO2LIDecP5NJQuQCLOWgY0ikkY=;
 b=vT6f3KyR7SWQfJU+JjW0bD+i1GdN+Hou3NF2bgXFE4xWV+66W2o9afZD0oCrhYCBAd
 BB8HwuNqRRL0LIhmlREUYmHmdmUot6jul7CvRKbn3dY8FYezwXkl458Sa/BQrAUIR1CC
 nxrABm7uvEpT6HgzMzSnPeVRWJ2mAgtMeci2i72sXMQl3mVmttJvhC+x/kSaHnZ+rxMX
 f613igesJMtQ2sOSIdeEb8ikmk0o9delO8z8VbufLjDFjsE38AnJJCYW93othlF0WdA7
 W9JhZ0fmNGZlTHJvdIg9jQjvoOMJH0pi7a5nFqJzt77J0prfLP8RY37uUAZeVdkavzYP
 oYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4vYOhRUIOXK8MxeH6VO2LIDecP5NJQuQCLOWgY0ikkY=;
 b=KPxNF+aW5rYObY6av2dhdcAF+B1ehSrAROkKNuPYuei8aMFt10MWfxnquXO3wbMg4I
 vdi3+eCJ6fXBlX8l2IR5RB/O+MAU/96JpywssenLJ6xvetLvwSg1SWQqeh7XMfcg78G2
 PMXZb7uG1prwX2V21rm5RSC58WpJkRQFltx/BpkXUaU9arzdkYVrMIqIfqScbBA4ntxD
 vwmhQJF0M3j3lLVMbXfUqHTaNwdRvAseREi+FX9yA6PUaFGZ9/uTVDaVWW5/THdCqsEn
 s2QAc8iDFjvNUO3/sOGip2kowqzSPIE8J3Q+uif8QjZ/b0flaUgOWG1+r2eP7rvAUFvk
 adLw==
X-Gm-Message-State: APjAAAWAbd8RXIh+2oaMpym2j973jD+oooqEIPSjzM6W0TFaclR4dvSL
 wMYJW4pBmWdQEg3zAiMWFEc4KVH4flcNfAlQQt8=
X-Google-Smtp-Source: APXvYqwcmc1Kv5pdMy7S/ZSIh5jJEeiDzZ6cpPSLXlqFRC1oZ2DNlVgHMiZj2fILHLCI8wng6IjNkvTTYLRCn0kyKHs=
X-Received: by 2002:a17:906:499a:: with SMTP id
 p26mr48422774eju.308.1563802531837; 
 Mon, 22 Jul 2019 06:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
 <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
 <20190722081157.rojxwc6qrsplpduo@salmiak>
In-Reply-To: <20190722081157.rojxwc6qrsplpduo@salmiak>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Mon, 22 Jul 2019 21:35:20 +0800
Message-ID: <CAEUhbmWLuFKdM0UhAvp2hjrDwYc5yxX91pZKOt9DHmb_oV-mJA@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_063533_651604_00DB9400 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Mark,

On Mon, Jul 22, 2019 at 4:18 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Fri, Jul 05, 2019 at 01:11:01PM +0800, Bin Meng wrote:
> > On Fri, Jul 5, 2019 at 11:59 AM Anup Patel <Anup.Patel@wdc.com> wrote:
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Bin
> > > > Meng
> > > > Sent: Friday, July 5, 2019 9:23 AM
> > > > To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> > > > <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> > > > Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> > > > Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> > > > <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> > > > Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
> > > >
> > > > Per device tree spec, the "status" property property shall be present for
> > > > nodes representing CPUs in a SMP configuration. This property is currently
> > > > missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.
> > >
> > > We don't need explicit "status = okay" for SOC internal devices
> > > (such as PLIC, INTC, etc) which are always enabled by default.
> > >
> >
> > Yes, that's fine because those device bindings do not require them.
> >
> > > Absence of "status" DT prop is treated as enabled by default.
> > >
> >
> > But per current device tree spec, "status" in cpu node is mandatory.
> > (spec uses "shall"). Missing it is a spec violation.
>
> I think this is a spec bug (or at least misleading wording in the spec).
>
> IEEE 1275 says (for status as a generic property):
>
>   The absence of this property menas that the operational status is unknown or
>   okay.

Yes, I checked IEEE 1275 doc, and it indeed says like you mentioned.

However, it says "unknown" _or_ "okay", yet provides a definite value.

>
> ... and I think it's fine to treat that the same as an explicit "okay" here, as
> we do generically in Linux.

So what Linux does is a defacto interpretation?

If everyone agrees this is a device tree spec bug, I will submit the
patch to devicetree spec then.

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
