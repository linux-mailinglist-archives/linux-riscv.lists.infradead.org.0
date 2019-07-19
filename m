Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7F06E544
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 13:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/yXIf4q9SlAUQGpPMZaBUiCVim3ql1e21P2oj2RTEE=; b=ZAKXfs+56Nq47e
	XPirRpZauel2nNjC3btH6yXUPpNck2ZzbSOLLAfSIEbTqTrYxIAIAhB40wky2IBPX1lXoiBnN2l4e
	Nf3wljlq8ycNh62QAsRZobtUgtoWkoAVWvB0OJOTm6p8qtf/QQ3eJ5Ph7IuMZI+pSabN9bQ0r4nzF
	Zr0oERVE60xKxVbhErPjv56dtKXthdsEvt+lhp6kTOf6wEcDfcn1mhYW0/aLTcEWzdlfswZaSnSmq
	oun9v4k9WtPdGdQNCQICC1CMvxMsH4fglOjBSDiLW6ayevRispeXFj1Ea3B8GY+XiYN7wLuheNRiS
	bEcDPhLUs/RkB0adn5+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoRSd-00029s-1S; Fri, 19 Jul 2019 11:54:03 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoRSY-00028r-Q5
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 11:54:00 +0000
Received: by mail-vs1-xe42.google.com with SMTP id m8so21393905vsj.0
 for <linux-riscv@lists.infradead.org>; Fri, 19 Jul 2019 04:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=biEayFt+VruGovDKa3i0LGzkhdkRNPx2sXZYzz56x6U=;
 b=jPqr/6Mlm/0/pJK4JP6UC30mDBqkzqAztFJLe3h+6SEe9YMj5ao3HwyrxaIM5Bv4Ra
 Bm7CWyGDK5+SDHUfZKyKuOTqcThuTd9f70KeCl6i+fIOVRu6g20omrBGnh2w5ewzSRg4
 e23Kq9iizjeG0J3cvawImzFPyq4DEE8PIGHwfdYUXfNzAEoU/ByIxdEE4YDY1IuddtZw
 cNfgleAGWH3pXzl8fAsg/ybtoC2hNcAcNaTVgKxsZPMlyMxtvOmmsDp50Ylj1uDvUu5t
 RrSZrj7JilYo1igG+dDX3fv2pCd28LpZMUDQkq7bxHxli/lwPPAqyyvqfnW53jnclsV8
 fVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=biEayFt+VruGovDKa3i0LGzkhdkRNPx2sXZYzz56x6U=;
 b=ZXov0pE9Ff0DESfQH/4OJsp0o7RVKcVfsyx5pxPRO6eEVHvvg+SVAk1wJOihaY+B18
 S7V7VcS0Cc+2s3rLY0Ce9XIBPaZdQIuwnjwZYX966AswAf7VKPoq4f5QoIq9Ggpnm3lq
 NeYZcY0xmOP6AcsdZXr7ushkNkWWzbAykBMpAJvtjP4BNqYKKL8vIgOkYZggLWz+h44P
 eOH9SKFSnkd5YAdlO6r8YLRV10kyD9sTuhQ8daD3OK3nFfbHs/71D9WwxWCrLwWClUuu
 N8Q4WQT0rqEwWWciqp1GCv2T1w5RAIvRk8CGYpuTcdFoOcC3BqEUH8+wDPCZSlDZVaZE
 xHSg==
X-Gm-Message-State: APjAAAXwHwDf62qjSWLD8Aq3ATokLa3mfAxwN5egv/rhrr7YcGscLm0S
 rUvo6F0H7GBBS1ILRYMT3N1EGz327OEH5ELHNRvbaA==
X-Google-Smtp-Source: APXvYqwWYrFQyvu6/xqxMA02acIpkSbnOTgebtxdq98QYxw/X8cgoILh6soRL04ZOIZlo8DcDFZfelQM0P8zJtJqS2Q=
X-Received: by 2002:a67:300f:: with SMTP id w15mr27551944vsw.116.1563537237115; 
 Fri, 19 Jul 2019 04:53:57 -0700 (PDT)
MIME-Version: 1.0
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Fri, 19 Jul 2019 17:23:45 +0530
Message-ID: <CAARK3H=D1N8gO0Z82_MCtgr5DtT1=E0wzYbn-y451ASgxV-qBg@mail.gmail.com>
Subject: Re: [PATCH 3/3] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
To: Yash Shah <yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_045358_904662_33835670 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Albert Ou <aou@eecs.berkeley.edu>, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, ynezz@true.cz,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The series looks good to me.

Reviewed-by: Sagar Kadam <sagar.kadam@sifive.com>

On Fri, Jul 19, 2019 at 4:41 PM Yash Shah <yash.shah@sifive.com> wrote:
>
> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 15 +++++++++++++++
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
>  2 files changed, 24 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index cc73522..588669f0 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -231,5 +231,20 @@
>                         #size-cells = <0>;
>                         status = "disabled";
>                 };
> +               eth0: ethernet@10090000 {
> +                       compatible = "sifive,fu540-c000-gem";
> +                       interrupt-parent = <&plic0>;
> +                       interrupts = <53>;
> +                       reg = <0x0 0x10090000 0x0 0x2000
> +                              0x0 0x100a0000 0x0 0x1000>;
> +                       local-mac-address = [00 00 00 00 00 00];
> +                       clock-names = "pclk", "hclk";
> +                       clocks = <&prci PRCI_CLK_GEMGXLPLL>,
> +                                <&prci PRCI_CLK_GEMGXLPLL>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +                       status = "disabled";
> +               };
> +
>         };
>  };
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 0b55c53..85c17a7 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -76,3 +76,12 @@
>                 disable-wp;
>         };
>  };
> +
> +&eth0 {
> +       status = "okay";
> +       phy-mode = "gmii";
> +       phy-handle = <&phy1>;
> +       phy1: ethernet-phy@0 {
> +               reg = <0>;
> +       };
> +};
> --
> 1.9.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
