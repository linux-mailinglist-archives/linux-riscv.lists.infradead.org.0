Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E2E6FB48
	for <lists+linux-riscv@lfdr.de>; Mon, 22 Jul 2019 10:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tz7woWBHsHZxzMSiwr9Htr+eyJu+GhXgc+5T0sxDbLw=; b=ZnKahk4Ppq7PiL
	FRl42fg5nPVz9hrpjIWAs7+ze5+ehsFYZ+H0pi6L0kxImFBmn21D7IyONxBAtj6UNJdKtp+F0M4u/
	bfCi+IEaArnpAMv79ywF7mw1WNNOX1ekJFpL1tVm4ZF+07/PpVohCof90BBvRHw21NWktwGhABCHh
	ZusCrAg8vWMCGcdX6iVxAEk6shEESjQanL82vMMhl61m7/y62yg8ZDAHhHXJgFhTQ3FiMQ9vcplUQ
	LvL1LUP8AzZ6MS+w5JJ/Nj2xqPmus3lr8JYWVzmVBgOLn686n+17I9s9UITVjWcN8uANxyMBAd+Yx
	xY+taa+zf8Tj5q1co5bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTfQ-0002iw-V0; Mon, 22 Jul 2019 08:27:33 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTfM-0002hK-SJ
 for linux-riscv@lists.infradead.org; Mon, 22 Jul 2019 08:27:30 +0000
Received: by mail-vs1-xe43.google.com with SMTP id v6so25570781vsq.4
 for <linux-riscv@lists.infradead.org>; Mon, 22 Jul 2019 01:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4RJyhgfgruenwkBfxBo44jsW4pz2HfZkSJXTbiqBf3E=;
 b=gztWv+bmLCUDG6mNEYFFvY8tZqi5r3puq/pDBxPphVwweusuYVn6zN2Y8qdTZw2pYi
 4zFCzJ2ISOb18Z20Keksz0xaXGoT8aVi9NKNJeqnCzpwcOpEbYV6Saym/h48X5KIyTCJ
 fKvZiAB6CWpOL5FneJ4T/xEvritiiqNZHvJj9GHvkD+KXnKXuhY2O6wLzW3fR1i+43TJ
 r7eO6MickDKg1hTNpwLVzhRb0Ki37ouO2PMQd3Y2sfLKtO+2t5LHofzSll3wnadxDPR0
 BbqGFlaY3XTXtQG8Mo8sZwzewWTVDt6bRi8ZJ2N7tOFsTIzISJpShd6atLP7SEqwCxLr
 E+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4RJyhgfgruenwkBfxBo44jsW4pz2HfZkSJXTbiqBf3E=;
 b=oCHwI0YcECONbSg7/5+pnc0DxUmcpGlQV+JUSnZ5+BL7yjU/+hw+QgZW1SndR+CmrZ
 O6EeUGMVxFBd0DcxtmIgvKaUIbccOD0in72AmGoewj2K+UjoYAUHbWc/3BoNObCD68aY
 qLbPhjTsNs2Yp63Cgr6D+5HZvlGa1qGw7ksaA+GEkLqdN5Q6askdTCHIPKPkcUodEH9r
 yq61gh34E04iHJmHnHCAGa+lU4o41w1EAaRE5SH5s3XBojl3HIu9VxRChof+X5xSP90E
 S67O1gel796ADz2b8Bs+Fakv1S6TPGucljU5czepx0u1ExzJnyAjctCngSY4/QcyyWVo
 kHZA==
X-Gm-Message-State: APjAAAVGLfDSGWNiTvhfHESdDMBrikHaEW8KXNSwI8rCTvWEsk1cbMmW
 f6fU+k/EuyfM4m9Z7vFfqubKhxs9B2RBmv4dKuNRCw==
X-Google-Smtp-Source: APXvYqyiO4svt03LtfyWGgVARgQQgWAX83euCH22ShiTYAP+9nnGonWbSkDuxevzOEUTnmTEFPm9l3Jw0Kwk9TtHijM=
X-Received: by 2002:a67:e8c3:: with SMTP id y3mr40205806vsn.94.1563784045548; 
 Mon, 22 Jul 2019 01:27:25 -0700 (PDT)
MIME-Version: 1.0
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
 <CAARK3H=D1N8gO0Z82_MCtgr5DtT1=E0wzYbn-y451ASgxV-qBg@mail.gmail.com>
 <20190719132657.GD24930@lunn.ch>
In-Reply-To: <20190719132657.GD24930@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 22 Jul 2019 13:57:14 +0530
Message-ID: <CAARK3Hn7vocesjGm3mNGJ4GJXwRnqv-qtVGAgFKMghH033JH4g@mail.gmail.com>
Subject: Re: [PATCH 3/3] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_012728_919725_49281C9C 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, davem@davemloft.net, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, ynezz@true.cz,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Andrew,

On Fri, Jul 19, 2019 at 6:57 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Fri, Jul 19, 2019 at 05:23:45PM +0530, Sagar Kadam wrote:
> > > +&eth0 {
> > > +       status = "okay";
> > > +       phy-mode = "gmii";
> > > +       phy-handle = <&phy1>;
> > > +       phy1: ethernet-phy@0 {
> > > +               reg = <0>;
> > > +       };
>
> Hi Sagar
>
> Is there a good reason to call it phy1? Is there a phy0?
>

Sorry for the delayed response.
There is a single phy, so yes phy0 is a better name.
Thank you for pointing this out.

Thanks & Regards,
Sagar Kadam




> Thanks
>
>    Andrew
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
