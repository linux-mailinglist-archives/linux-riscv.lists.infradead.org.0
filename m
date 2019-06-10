Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72CF3BED8
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Jun 2019 23:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2Fu7Eql52GwYHKAz67VEQkQcUTfNmQjg106eTvheZk=; b=Ld3NrFAxj+Tkr+
	a0Z1/O/tTlC1zSQ2+s3O/8S/lGTUUJ4ipXytB8c2n+lJoSJyUdnTBPT9skrljq8Za1cMv18nApdeR
	37EOMtkq2VfuchBvMWC1uTCDqeI0LhHNQamhfvX9B2d7VHozVkyA3uPobUml+FerwZ96fUXisdwkV
	BlAKBotKLWAehR77tLr4yHAwj2lPO0LgS/DlKNcEtxlqlz/p8/i6DuXJ3Nbz88/HqarjO7TGqtWvG
	2WKX0/liYj/TFtDcVe7NM6i+xW+Fdc9W8PVIGm8gz3moruMPsoSYxdJ6oBxhRD81uEzFeAgsNelOC
	4V0JjSL6x01YwMG2vibA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haS6G-0005Ys-5E; Mon, 10 Jun 2019 21:45:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haS6B-000575-EE
 for linux-riscv@lists.infradead.org; Mon, 10 Jun 2019 21:45:05 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9E5F2086A
 for <linux-riscv@lists.infradead.org>; Mon, 10 Jun 2019 21:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560203103;
 bh=/OAK+wgX00BvEO/5xuEo21p7PZVrq3kJQYAtsMVK2cQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aZBpwUbOWxSeH+0Pzbw2QR+lNr4UlyjDtx6P+G5vkqXUuy18EuVTVg05yDPIO/r+6
 aCvLC10NDC+PJ6etbhLlDCy/h9Ov8rPw4w7W+AqIovjG2CYRqdM3C7Ob7q1PwTeAcd
 eDRHLfo8wuQs4qMYHxAkLOt7oIeQap0GS6+DrsJM=
Received: by mail-qt1-f178.google.com with SMTP id j19so12114168qtr.12
 for <linux-riscv@lists.infradead.org>; Mon, 10 Jun 2019 14:45:02 -0700 (PDT)
X-Gm-Message-State: APjAAAXFQMBRFMKReyBJTMfTVZkHr7Y5siHuw4PjhRwICGzqmcKhQOqU
 CoW1+ErKNGkAeVnvpuxGNPGZ8I3QS8hOmQGmmA==
X-Google-Smtp-Source: APXvYqzP/smCdJM2r7zYkv6EMMywIyWDi0CbUbkg3kvV0vqRtj3TIU4OoDXxhmFWVdQID4xTkY3MYji0R7fjfCZZFaI=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr60371707qtb.224.1560203102240; 
 Mon, 10 Jun 2019 14:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
 <20190602080500.31700-3-paul.walmsley@sifive.com>
In-Reply-To: <20190602080500.31700-3-paul.walmsley@sifive.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 15:44:51 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+Lx+SBZ7_+0tCYJs+oA2zR9c+q2XdmFbEtpWxoLXVibg@mail.gmail.com>
Message-ID: <CAL_Jsq+Lx+SBZ7_+0tCYJs+oA2zR9c+q2XdmFbEtpWxoLXVibg@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: riscv: sifive: add YAML documentation
 for the SiFive FU540
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_144503_508700_A50AA4C7 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Paul Walmsley <paul@pwsan.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Jun 2, 2019 at 2:05 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Add YAML DT binding documentation for the SiFive FU540 SoC.  This
> SoC is documented at:
>
>     https://static.dev.sifive.com/FU540-C000-v1.0.pdf
>
> Passes dt-doc-validate, as of yaml-bindings commit 4c79d42e9216.
>
> This second version incorporates review feedback from Rob Herring
> <robh@kernel.org>.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: devicetree@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  .../devicetree/bindings/riscv/sifive.yaml     | 25 +++++++++++++++++++
>  MAINTAINERS                                   |  9 +++++++
>  2 files changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

>
> diff --git a/Documentation/devicetree/bindings/riscv/sifive.yaml b/Documentation/devicetree/bindings/riscv/sifive.yaml
> new file mode 100644
> index 000000000000..ce7ca191789e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/riscv/sifive.yaml
> @@ -0,0 +1,25 @@
> +# SPDX-License-Identifier: GPL-2.0

Note that the preference for new bindings (or old ones you have
ownership of) is to dual license GPL-2.0 and BSD-2-Clause.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
