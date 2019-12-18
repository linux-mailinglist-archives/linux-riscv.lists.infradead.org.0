Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F1D1253E5
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Dec 2019 21:51:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nSEj6kyDhq5P6mAclRcvCmoF52iAZQnMbrNJi3sF4JA=; b=YCfI8nPV3u2XX1e9elBl88AEY
	nO9ZbAMq7JvOb4LOGIfamd8OVpx+TXjUb0l8dvM3H6KvqtWxLTP3r2x9g5OpB9Jxi/mNAUH+ZC3XG
	wuBckfqjj0kaj/XEhtJKRjGhsUUj/8gpevN96uHJELlSAfHXTJ678pCAowWV9ZeN71vyc6+Qvlefs
	iL93ok1TDI2+KdWIynC1Ez6Iy8+AwYYC/wjT5pjn3u0VQtf0Bigzd30I9LFS+OwrNzVfqPbcfWvNf
	oVHcwxp3ktl3V1VgcPMfnTINrrGinBlatz8a84v4xaVgd0NgeJNpts3MihjMfcPKG2nXyFALWyQcS
	Lv0CHfOtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihgHz-0007QJ-Fx; Wed, 18 Dec 2019 20:51:23 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihgHw-0007Pc-Ev
 for linux-riscv@lists.infradead.org; Wed, 18 Dec 2019 20:51:21 +0000
Received: by mail-ot1-f65.google.com with SMTP id c22so4056482otj.13
 for <linux-riscv@lists.infradead.org>; Wed, 18 Dec 2019 12:51:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nSEj6kyDhq5P6mAclRcvCmoF52iAZQnMbrNJi3sF4JA=;
 b=PJ2sSRxBAhhGY92dcPTE5gk+WBpSGqVuVt7O9uYLj8hlSXCwf2g/w+Q6y76S/nvXgs
 2Du2pDaYVowY8cz0Y8gTCwVlRU7V1hcJ0EuwKVOiSpweqtAklLzEqcTwN8x6hBa1oaew
 9u+3+1dP9RDA1KepQxXCi2iuqXH6i99qSVXjh1V8b4VPYa2myNhN09gGWmZ8EhzKehhI
 SCTq8fbzoT9Ji/WcCZlyTz2LipGofU0teXgxwGsSwvZjw1o8acrGDOmRNo0OI05MkTsU
 YdQ3FPXDg6+FzoGdcgX2DY1sm0ct4SMJXiNnYms6cWA7QU2JUjp/Wzxlzq/yhwJTS/4R
 vh9A==
X-Gm-Message-State: APjAAAVMP7BTB0AXhaG5/7+EhXhBYt71ZAJ9oDzrjGQubIMVz0BLOEh8
 P9lLLPF94efibS2zilti/Q==
X-Google-Smtp-Source: APXvYqygAa2pY0RW+kCp3G3EmR9J+pePpjjBE3bTxuC6HQw9JYgh4wl5v+3NVqjlcimD0GHFuRxY6A==
X-Received: by 2002:a05:6830:605:: with SMTP id w5mr556250oti.79.1576702277913; 
 Wed, 18 Dec 2019 12:51:17 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e6sm1215390otl.12.2019.12.18.12.51.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 12:51:17 -0800 (PST)
Date: Wed, 18 Dec 2019 14:51:16 -0600
From: Rob Herring <robh@kernel.org>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v4 4/6] gpio: sifive: Add DT documentation for SiFive GPIO
Message-ID: <20191218205116.GA31691@bogus>
References: <1575976274-13487-1-git-send-email-yash.shah@sifive.com>
 <1575976274-13487-5-git-send-email-yash.shah@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1575976274-13487-5-git-send-email-yash.shah@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_125120_499675_E05AE94B 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 jason@lakedaemon.net, atish.patra@wdc.com, maz@kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, Yash Shah <yash.shah@sifive.com>,
 robh+dt@kernel.org, palmer@dabbelt.com, sagar.kadam@sifive.com,
 linux-gpio@vger.kernel.org, paul.walmsley@sifive.com, tglx@linutronix.de,
 bmeng.cn@gmail.com, linux-riscv@lists.infradead.org, sachin.ghadi@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 16:41:12 +0530, Yash Shah wrote:
> DT json-schema for GPIO controller added.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
> [Atish: Compatible string update]
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  .../devicetree/bindings/gpio/sifive,gpio.yaml      | 68 ++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

