Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E294E709
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 13:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiF60OaBXaT93oMuksB35RrvpC2VccvkRX8xsGg+kBA=; b=R0VYd1FxLBXehl
	1bflb55y6wOAqwOnNbDconq8eK16HRM5XLkNPVuHYMt/BwqMZr9cWeo7W/tXjVxLZjH2emGzQyy4e
	btojKayndUsPp4sYb84leA43uSfJrVI7ukcULaFLGh0crEv4F8rLZJjsGiKX2dSewAFoERWRtLIQ0
	WLpJNAW+jBopYDuGKMvtIt6sHQvqCiI5LNtpTELZUDUtVY6X59mYFR8vYWkTDrzAD3jsvz2EKw1Hu
	uraFmfWLe1jy5OdKV2HyJbem5B68A1P9WesHKsTgW+Jk4Su8Upq2OaR9p5u70yeRh1f9u/YbsZkTs
	DZHUkhamQV+v8gn2aMjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHbZ-0003Iy-2u; Fri, 21 Jun 2019 11:21:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHbT-0003ID-J7
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 11:21:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id a15so5982574wmj.5
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 04:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XAz5+1ZugVE5GkUQUctoaFL1CCKytfPvugsjxndG7cg=;
 b=tto/SWz336iwBga4qSfNB9bs/TG22rJdxD0IgYr48cvF+K3ateyntpV/dUlyNZDL61
 ZLmokGp2bumZ7ODNLi9hYawLy0ew4Tk4C8HYpY1KSFzvlUZ0JQy8pe5muHT9SrWzTdQB
 yS9mlZ5DdniDCQDobAj8u4NHQNZWlHRXhQOTnjF6h9uk3/UQGqKgWVLKuVyeh4FolkiB
 XsndbKlT3d5S3p5Tuq6uyLwJrbLlRk6APCom3X6vj3bR+ZP6fvBER+KgTzvkADIwJFj1
 NDW4ZTD04S0vvZS9mhTv5HU6C8OzFt/MmxYbz6ppjN/DcMTLKCClTY084IXbfdw9Vlke
 n89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XAz5+1ZugVE5GkUQUctoaFL1CCKytfPvugsjxndG7cg=;
 b=ifT6qBQYzrcx0y5DRErXWFUSNB6Gpynl81a2bLJ43u/poCf+MmS39MKwKhHiSd4FzD
 RLFboMwOgTQ/9HhEeCUXR02wO+w60jITxrIR1KIQ6Xf6CGwpIV4xzIcGbCcmPzuN2PpO
 pQ68DtXvHltjTozHKNwnQzU4vf5aoavB+Ai+CpkmzD9BlOQi0fohTEzDZ9bs/ilVsX0B
 hGTzydx3DiM3juvN15MJkgYn5NdFUIRPRNCvG0OVq+P/aPdMr64zQUVfRApft/a7EFhA
 nf/gsWUsntiK7AonhM6qcl+6T9izuDT6trV+DWAIK1/6TiBY+fGZRejgwlfM9q0yYx3U
 vCAw==
X-Gm-Message-State: APjAAAUiFUoOu2Eij14WwrvI3o2XLf6oS/QJNNMlPecx/1w18hsRzZCL
 FtlLOtGmpJHZ30uZcgCCqBzB3+/xH6DhKZx4QiTLgQ==
X-Google-Smtp-Source: APXvYqwCkNmbGI1oEoF6P2VDTiGVGuWQkJhUYyk74HPQNXJGI2qWaNAhuxz1OHfnUA9Lp5z2MnK0iWTp48u7p/OPB3E=
X-Received: by 2002:a1c:2dc2:: with SMTP id t185mr3889348wmt.52.1561116068934; 
 Fri, 21 Jun 2019 04:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
 <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 21 Jun 2019 16:50:58 +0530
Message-ID: <CAAhSdy2uuUDkB5wa1FJzBFqDtNi2HBWs-s7G3BhCpwGs=LRohg@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
To: Yash Shah <yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_042111_697595_8F2F331D 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 sachin.ghadi@sifive.com, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 4:27 PM Yash Shah <yash.shah@sifive.com> wrote:
>
> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 16 ++++++++++++++++
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
>  2 files changed, 25 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 4e8fbde..c53b4ea 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -225,5 +225,21 @@
>                         #address-cells = <1>;
>                         #size-cells = <0>;
>                 };
> +               eth0: ethernet@10090000 {
> +                       compatible = "sifive,fu540-macb";
> +                       interrupt-parent = <&plic0>;
> +                       interrupts = <53>;
> +                       reg = <0x0 0x10090000 0x0 0x2000
> +                              0x0 0x100a0000 0x0 0x1000>;
> +                       reg-names = "control";
> +                       status = "disabled";
> +                       local-mac-address = [00 00 00 00 00 00];
> +                       clock-names = "pclk", "hclk";
> +                       clocks = <&prci PRCI_CLK_GEMGXLPLL>,
> +                                <&prci PRCI_CLK_GEMGXLPLL>;
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +               };
> +
>         };
>  };
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 4da8870..d783bf2 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -63,3 +63,12 @@
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

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
