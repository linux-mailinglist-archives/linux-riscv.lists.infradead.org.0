Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB402EFAF
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 05:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aeKDp64u2YWZpdebX/OxaVZ8LQyjPnCdFFLvmkSDwC8=; b=USZAkOU7qw/g0QqsKTUUse8ija
	rn1pIFe/j0o4eUDtNK3nn1djCRobPjA94em5Dn53yl6jiCuLslTu+O1/BnUa88y031GYYOejqY0Jd
	wfLJB8rMFycuSUZ2ApjQfl6Aas3+gRTSRQnKVKv27qzuF8h0X8hnMotFLGMdoqo4ljtXpJVnJtPvt
	9zetwSmUm7mP/8p1LxhCXQNuaBwa1GxZ+00dENBOpRKRPJr/KmC4Se4/DKaG4o//wDFplID2OVbf+
	T7lETVNyT6BVOJFFzzxLn6A2UkIshhZdzrXEOHp8kbXdXNUtzlsuOzq+IEFVGL2rkYQ8tt/+2/nJg
	muJTZN+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWCCJ-00035o-W7; Thu, 30 May 2019 03:57:48 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWCCF-00035U-PW
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 03:57:45 +0000
Received: by mail-vk1-xa42.google.com with SMTP id l13so473951vkk.6
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 20:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=knP9Vdv/W9CTVqFRXbGhRDZ6S1C60rRcw9hZ+qG6uSI=;
 b=ZmldDBEPfCONxwpTJVlWszmR8g7AW3et6y0xSLMruEMwOdIXeFddd9HCltth1r5kBq
 sDmq/yoFJM4MFKOePC7YAmmgfC8izwuEcBf3KTDHbJ99AlgawtpYCSFgM5RZ37t9vZUs
 +gdp2UcLBPc52KiKo7mgT+3g6dVnVVf7oGVyiwRrIIt/ba8D1RvMyk4j2jJIS6ujOoVR
 eMGNd3hOH5HEfSsLm0lhb1cvkymfrTbiL0NQppS2PmtPQFUdaOd/jHeC1x0/ORUzLoGR
 GC15E5eo6rdxNB3PtMZUtQMFQRWQGQ3Ic4s8MW002f2OYbeW0rzhq8A52kaa/Vj6RPkP
 ISpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=knP9Vdv/W9CTVqFRXbGhRDZ6S1C60rRcw9hZ+qG6uSI=;
 b=doCNUOG0HEqGFCTVZWW7FNbVO/r7a/nd2fT3oaImRfzz7XN2F5Jzz+xP8jUXuIIaAh
 101cWqaO/y5xW6tiOCxgWdm7KtumMuArB8aMetP64e9U9pBXrc0RwwasvRcmvZoPZwxm
 ubr7vqoSsXz7oIP7LHqi+j7KVvU8S5kgievW3QHZgB1MjY0IDc6KZlgyjDroPJoJUPkY
 MzLLRWJwKbZIIGynGpz9NA4huYmgSUl4P6kBgybGpoa+sKFhTYEsnP4I+gKJzWT76IKV
 ZlXN0BNmwHzZKt8Op875Aok/LTtcKtsMZwNnbA/W41qigtOay3c+Dh5p7gM3P5Yai8Se
 YfuQ==
X-Gm-Message-State: APjAAAVdJ4hWvwXL8YPRD7SvUZ1r50C4cSfUecl8O40kgLkCfXKGk8qe
 mcdPKOOtVsIcaSXe5kyKBhfuaSABpwFGSapqco7ZwHQ5BgE=
X-Google-Smtp-Source: APXvYqwgq0hw9LUvz5cuuDP/OzdFkdA/aey96P69lz2u1TwLNK5+B/g6I0a75Filrgu8sfxR+q3gaQnmfYsUlBgRxyQ=
X-Received: by 2002:a1f:e043:: with SMTP id x64mr548839vkg.74.1559188662612;
 Wed, 29 May 2019 20:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
 <1559104047-13920-2-git-send-email-sagar.kadam@sifive.com>
In-Reply-To: <1559104047-13920-2-git-send-email-sagar.kadam@sifive.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Thu, 30 May 2019 09:27:31 +0530
Message-ID: <CAARK3Hm0F+6qAh5LYbqnfn5LeDyptyBy+_DZxAxxFg5bhe8Uxg@mail.gmail.com>
Subject: Re: [PATCH v8 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 peter@korsgaard.com, 
 Andrew Lunn <andrew@lunn.ch>, Palmer Dabbelt <palmer@sifive.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Linux I2C <linux-i2c@vger.kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_205743_825946_0BC4B3CD 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Rob,

Please let me know if this patch is as per your requirements/comments
you mentioned earlier.

Thanks & Regards,
Sagar Kadam
On Wed, May 29, 2019 at 9:57 AM Sagar Shrikant Kadam
<sagar.kadam@sifive.com> wrote:
>
> Reformatted compatibility strings to one valid combination on
> each line.
> Add FU540-C000 specific device tree bindings to already available
> i2-ocores file. This device is available on
> HiFive Unleashed Rev A00 board. Move interrupt under optional
> property list as this can be optional.
>
> The FU540-C000 SoC from sifive, has an Opencore's I2C block
> reimplementation.
>
> The DT compatibility string for this IP is present in HDL and available at.
> https://github.com/sifive/sifive-blocks/blob/master/src/main/scala/devices/i2c/I2C.scala#L73
>
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> index 17bef9a..6b25a80 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> @@ -1,9 +1,13 @@
>  Device tree configuration for i2c-ocores
>
>  Required properties:
> -- compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
> +- compatible      : "opencores,i2c-ocores"
> +                    "aeroflexgaisler,i2cmst"
> +                    "sifive,fu540-c000-i2c", "sifive,i2c0"
> +                    For Opencore based I2C IP block reimplemented in
> +                    FU540-C000 SoC. Please refer to sifive-blocks-ip-versioning.txt
> +                    for additional details.
>  - reg             : bus address start and address range size of device
> -- interrupts      : interrupt number
>  - clocks          : handle to the controller clock; see the note below.
>                      Mutually exclusive with opencores,ip-clock-frequency
>  - opencores,ip-clock-frequency: frequency of the controller clock in Hz;
> @@ -12,6 +16,7 @@ Required properties:
>  - #size-cells     : should be <0>
>
>  Optional properties:
> +- interrupts      : interrupt number.
>  - clock-frequency : frequency of bus clock in Hz; see the note below.
>                      Defaults to 100 KHz when the property is not specified
>  - reg-shift       : device register offsets are shifted by this value
> --
> 1.9.1
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
