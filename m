Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC1C34A7D
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Jun 2019 16:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Vbc4QriQNd80c7hmdNg4fEpyMc8Thl+PElOwfVSV37U=; b=PC7
	DJnU6mgGSXRcP/3ITlRL6u+ZvRnXiLdgtIqDam5apI5c225pFHvrynF2Tgjr0UUOK815nf+R+sH16
	zYtkw6mtQgcV7iytTnKrg0ZYObVrVI4st4/4pMLSJ6esSKU1XZH4xnGBtYOWpNiGcObMLzhOqRdoV
	BLkFdq2SewY+wgeXcSoa+XFkNwKQV7wz93J/pqOhko1UaEQ3MlwL+IYjeXt/9igYrQ8KxNx+pSqoY
	WCJ9Jux6StrThBNz73azuLlWaZ1ZEDXgyQ3ac391khhaKRkG3zPsj0qUyvmpbf+g3NM5/MAUBP+KE
	I/wq+jyrxBlTm+nsbugDngGaAUCuR7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYATW-0008QD-2q; Tue, 04 Jun 2019 14:31:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYATR-0008PQ-54
 for linux-riscv@lists.infradead.org; Tue, 04 Jun 2019 14:31:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id f10so305487wmb.1
 for <linux-riscv@lists.infradead.org>; Tue, 04 Jun 2019 07:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:in-reply-to:date:message-id:mime-version;
 bh=iZarr12ESEXM+3F555ibf1PVEySArgP2BdGs23qHHOA=;
 b=BbQdUxnvVlxCxjXC7jUR55mdDIO8JQj5nGqaIpxfqMhT4ghZzSoCZx77DBgbcsqwrz
 rMZbiCqwmEVBq64HEj4vliR38yhgwyeYzCZ/RBfJwQiJpgi1x5jXQaS1gD2Q3n+TZAmu
 hY6gIZhMkdbXSsd8cmATmf9FyREaXKDKS9BgV5x0lI3F1liX4vtXHHgABkBTTKwZ43Xb
 jcCbcwKCJq26Xg2itgXgPZARdQDLxsSX7/GOdiwm6EtOU93u4mcdHEd6KmnhrDeKAfCw
 JL7/VJIAysoim+22ES9fVyDvkzGOV8TNKWJfdoKXyf/8vJVIBTggZi9+alvNGmt9A7Or
 vV4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:date:message-id
 :mime-version;
 bh=iZarr12ESEXM+3F555ibf1PVEySArgP2BdGs23qHHOA=;
 b=fGD5vnWTnBYAU3pFoiBLCJvOqqIsdqm5izqMzUWiNZQXetEaVG4XIh9r4Ku4V3ukCc
 QWLMpTGZK7w1sRj124lkoTh5cidKj39zOmwyA12tcySmlYZM5BUKec5CooQdOv7NOB8Z
 B0GdmdqIRli6tq7J9bXTZFZLbLKKlAmKlt59xl+tqlexIh2qUpzBp8gb5WL5aN7UphJC
 3da+iKATImwQOK+SNVij/JWy8TSNMZCBmJRGFV67mlUDrva2repVIAVfJJb1e7VqjjxV
 YAEsMkE2UIZUSonSbb45RStvJ5rh2ICTXxzFODWcIgBsnvEZ5g/gQQpDhFMxtOK6b2Wl
 UfXw==
X-Gm-Message-State: APjAAAUHLU7Z7hbtzZutm2DYDTzYUfYu/QPgCePuKtEpSg1+vb8WvZUJ
 xtSLiih1URIU/vuApWR+WgcEcQ==
X-Google-Smtp-Source: APXvYqyIooETwPZrZMrF2j6qHwH8bld2cOLZ1ydsgGSFZ6macMr3fCWCAcQrNOmgK6emptf2WEzGxg==
X-Received: by 2002:a1c:4184:: with SMTP id o126mr6303600wma.68.1559658695037; 
 Tue, 04 Jun 2019 07:31:35 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w3sm12685803wmc.8.2019.06.04.07.31.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 07:31:34 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 0/5] arch: riscv: add board and SoC DT file support
In-Reply-To: <20190602080500.31700-1-paul.walmsley@sifive.com>
Date: Tue, 04 Jun 2019 16:31:32 +0200
Message-ID: <86y32hh16j.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_073137_252218_18C5956D 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sun 02 Jun 2019 at 01:04, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Add support for building flattened DT files from DT source files under
> arch/riscv/boot/dts.  Follow existing kernel precedent from other SoC
> architectures.  Start our board support by adding initial support for
> the SiFive FU540 SoC and the first development board that uses it, the
> SiFive HiFive Unleashed A00.
>
> This third version of the patch set adds I2C data for the chip,
> incorporates all remaining changes that riscv-pk was making
> automatically, and addresses a comment from Rob Herring
> <robh@kernel.org>.
>
> Boot-tested on v5.2-rc1 on a HiFive Unleashed A00 board, using the
> BBL and open-source FSBL, with modifications to pass in the DTB
> file generated by these patches.
>
> This patch series can be found, along with the PRCI patch set
> and the DT macro prerequisite patch, at:
>
> https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1
>
>
> - Paul
>

Tested patch 1, 4 and 5 using FSBL + OpenSBI + U-Boot on HiFive Unleashed.
Tested-by: Loys Ollivier <lollivier@baylibre.com>

>
> Paul Walmsley (5):
>   arch: riscv: add support for building DTB files from DT source data
>   dt-bindings: riscv: sifive: add YAML documentation for the SiFive
>     FU540
>   dt-bindings: riscv: convert cpu binding to json-schema
>   riscv: dts: add initial support for the SiFive FU540-C000 SoC
>   riscv: dts: add initial board data for the SiFive HiFive Unleashed
>
>  .../devicetree/bindings/riscv/cpus.yaml       | 168 ++++++++++++++
>  .../devicetree/bindings/riscv/sifive.yaml     |  25 ++
>  MAINTAINERS                                   |   9 +
>  arch/riscv/boot/dts/Makefile                  |   2 +
>  arch/riscv/boot/dts/sifive/Makefile           |   2 +
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi    | 215 ++++++++++++++++++
>  .../boot/dts/sifive/hifive-unleashed-a00.dts  |  67 ++++++
>  7 files changed, 488 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/cpus.yaml
>  create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml
>  create mode 100644 arch/riscv/boot/dts/Makefile
>  create mode 100644 arch/riscv/boot/dts/sifive/Makefile
>  create mode 100644 arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>  create mode 100644 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts

Note: the -fu540 was dropped from the previous version which results in
a different dtb file.

Loys

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
