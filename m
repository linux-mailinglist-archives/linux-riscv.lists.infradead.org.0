Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70B94B28C
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 09:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=fKZ69UnNiz7FtQclX4ps2J3KIiMvzBmutiOe5w0ympM=; b=nFPX2EptBEUF50AyjY3x1v9Be
	qNp6TpZVsBRu63XCQ6vPFLb7IYxKyru/WzVI4peIdnEpdcj6sl3qJH1JggqTj8PMWkrwfHtD+UTx+
	J8Ppg/i3ZiVu3pC4akbCMztj8xa6gEpGxSNkzrBP9sIEchr5d+H6JSlgP8Ad7Fj21HcZHeqxcHRai
	k8Sq6LLjr9qxaGs1t7Qanb5khdkAVT5CVtR3RgkOzhZw4E8wEOT0CgBb4zWXM87lc3w3bR9DpNrfa
	GqBu00AI3+lju/V9YeVXtBbYZDiDj5ep55K0GfUvq9AnTdJtYuCQCjwtkKlnHc+sy1E3wDeNhfnuD
	fMqvBBqXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdUdu-0003B4-Hf; Wed, 19 Jun 2019 07:04:26 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdUdp-000387-PR
 for linux-riscv@lists.infradead.org; Wed, 19 Jun 2019 07:04:23 +0000
Received: by mail-pg1-f196.google.com with SMTP id l19so9090090pgh.9
 for <linux-riscv@lists.infradead.org>; Wed, 19 Jun 2019 00:04:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=GRtGy7EtU8jAUy4yjm+riLlSPb0h7m/0LVZFMRonxGc=;
 b=TYOYfr8KVbqlzXpviFzNKmoEVHPihBYui5WZo8pDh8fodrkvEIYLBMwiA52NJK92bm
 guu99lBd0gvFXXefL5o787+HT+hmGoCtC57uqKLvdL1tL/Zs85QHif/+Kx8Ws/VQVsj9
 IyJSgqj9HBk1e53IyqEPqEZEKSwSWoQ2x6xhnIP6T9E1B9BNNJnHiLQvvzy5FMYE81Al
 bQx1nF1EWCTCO8en2frBkJpJIbR18CZrfLZqSev7uoGTQpli5D/m8TFtlaZjsx13QCHE
 3reMHjXsRY0uMLR/a7ReKvj1RYX2umnMAjbIa1LknLG7u1wMOAmq4jiEp2Y8FEeDY3zc
 ZSdQ==
X-Gm-Message-State: APjAAAU8/mZw67XzTWBH3+qqpAju2mnmm4Ex7T1bxsbvHoNwM7MdSg/B
 mwAHnulq2B4iEzWZKMjy8ViTMg==
X-Google-Smtp-Source: APXvYqyRdGXM+Smc3hV/EoxiTjkWKnX1cbCHAGS/7j+K5uF7RUjeUIGPuiQ6LZuMklZ2vjFNydYcfA==
X-Received: by 2002:a63:5b1d:: with SMTP id p29mr6212374pgb.297.1560927860195; 
 Wed, 19 Jun 2019 00:04:20 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id v23sm17622559pff.185.2019.06.19.00.04.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 00:04:19 -0700 (PDT)
Date: Wed, 19 Jun 2019 00:04:19 -0700 (PDT)
X-Google-Original-Date: Wed, 19 Jun 2019 00:03:34 PDT (-0700)
Subject: Re: [PATCH 2/3] riscv: select SiFive platform drivers with SOC_SIFIVE
In-Reply-To: <1560799790-20287-3-git-send-email-lollivier@baylibre.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: lollivier@baylibre.com
Message-ID: <mhng-e248d181-8676-4355-9825-d06049606d85@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_000421_885123_FE82A350 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [203.116.164.13 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, khilman@baylibre.com, lollivier@baylibre.com,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 12:29:49 PDT (-0700), lollivier@baylibre.com wrote:
> On selection of SOC_SIFIVE select the corresponding platform drivers.
>
> Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
> ---
>  arch/riscv/Kconfig.socs | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 60dae1b5f276..536c0ef4aee8 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -2,6 +2,11 @@ menu "SoC selection"
>
>  config SOC_SIFIVE
>         bool "SiFive SoCs"
> +       select SERIAL_SIFIVE
> +       select SERIAL_SIFIVE_CONSOLE
> +       select CLK_SIFIVE
> +       select CLK_SIFIVE_FU540_PRCI
> +       select SIFIVE_PLIC
>         help
>           This enables support for SiFive SoC platform hardware.

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
