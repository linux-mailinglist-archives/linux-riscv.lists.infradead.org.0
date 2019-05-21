Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDE1256FA
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 19:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCwibS/TdmOXC3QvKg+MkMn9mou2SI1x/N1N9Q5qTXg=; b=DDbkhzd21YIzqz
	NoptHgIlDGoSgyFl6co1vqn9NLDFLTTxs9955SDo0+kzypclHBhShlWt+v4VGclhvxCHtzsMJbb99
	F2qJdT9rhiV8VK1tujGU/Xnj4VrWigeORi09OE2IY7NPOxujqa+W7ly4PzQn30n61LCrW3yl7MYv8
	yGSDTcel1KCUybGwQ/qQ2R73lqRNEjdsNZmmklupClAHvHHahDMUSrtOQUgnJSPC7iCuBKb6OIabW
	loORkIUFfqCLTMl1/gUTnFPtmmXIkAjtXCi1WD481muLjuUyGPGdk6UQ5Vd1FdxoGKJlw/dLOxZBr
	Xs00yIDe1xlWe6Lr/YfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8rr-0004Wj-4o; Tue, 21 May 2019 17:48:03 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8ro-0004WS-1a
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 17:48:01 +0000
Received: by mail-pg1-x52e.google.com with SMTP id d30so8941014pgm.7
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 10:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=YNVxi/9bYbYC91YuzF5QRrNLjsllOdUHbO+1PTAwtvI=;
 b=Lbsr7qIFU39F/oB54R++ZHZOi33mP65BaJ8w0GIr0MDiwqNfQ3sjaPI6REZGXX22x9
 AGvZCjhNyKHjLnA4O9fmiWllr1uokxJuM1OZLjE95GK/hlRaTRKN/Crau5rWiP+Le9r0
 zk6brLu0J5EpNN5UsPVsXL5Bgr52VD6C1c4GT388zyQ2ZJovmtmx4QX1pt7pcCgMAf5a
 r/e8AxmabuuxDpMe0/yNVw9RJPh9i8hd1AG/H8uR5TJVbImH3293vcwH4a2iNfWBrOnD
 NH4TF69BJgCvkTYq9jLO/vYDqbOynBE01ekfSyZZ+lYXYQ8ESvil0Qv8ZRY4x9xo9iIv
 1Nww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=YNVxi/9bYbYC91YuzF5QRrNLjsllOdUHbO+1PTAwtvI=;
 b=NQiuzSBc+nTf/vAFH3aXXYYi5R1dUtLjuSPdVWZZmwwnx9tABOVrklj1NIpTAAkUYY
 p83mOqxPzpw46YDqN4IvTb38E3564b9PtY3dRyDLnnr1/rNwFVYPyCeWZreXfEk7jyQA
 PlrYMMj3qzXTjWhy5kb5+IzplzmjJEQ2a+N8LVwbjgRAyr51ueVs1vbHhFfmKJJKzWej
 54Fxkjx+lJpjtoDwdQu+NnfJ1E/55JzQ2bpx4ZNU+RnL3koRUYw0ooPiZkjGIDgo55IY
 X2L7DPXPM2swp5+XpVYPoV5rfjAB8FEXiVY/V8CgVhkKZrVGUlmfjf7Hjp4ltzE45NRS
 eg8g==
X-Gm-Message-State: APjAAAXS/80nbwPAVODlDreDiZMDUgV0OSUgVWA6nEg3/c8kyR7gsm2M
 SDAW0SYHD5yUMtci0/6F89lznm1HGv6TxA==
X-Google-Smtp-Source: APXvYqzQR2/gIrcs0LhucTK1BnRfaA67qrfOLRY4NBTCTeeYQVRlcdsZLFLTgjCdkwnc96+aNLYMZg==
X-Received: by 2002:a63:1f22:: with SMTP id f34mr22362168pgf.248.1558460877989; 
 Tue, 21 May 2019 10:47:57 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b1ca:3800:3284:d770])
 by smtp.googlemail.com with ESMTPSA id u3sm24143611pfn.29.2019.05.21.10.47.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 10:47:57 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Atish Patra <atish.patra@wdc.com>, "paul.walmsley\@sifive.com"
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Subject: Re: 5.2-rc1 boot on Unleashed
In-Reply-To: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
Date: Tue, 21 May 2019 10:47:56 -0700
Message-ID: <7hlfyz7l83.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_104800_134914_97EE628C 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Atish Patra <atish.patra@wdc.com> writes:

> Hi,
>
> 5.2-rc1 still requires some out-of-tree driver patches.
>
> Here is my tree (successfully tested on Unleashed.)
> https://github.com/atishp04/linux/tree/5.2-rc1_unleashed
>
> Issues:
>
> 1. Thanks to Paul, uart & clock drivers are merged. However,
> 	a. upstream clock drivers require DT changes
> 	b. Those DT changes are still being reviewed.
> 	c. FSBL need to be rebuild & updated for these DT changes.

I would also add that due to DT changes required:

  d. Does not work with upstream u-boot

which is a blocker for fully-automated testing in kernelCI (unless
someone wants to work on the kernelCI support for BBL+FSBL. ;)

Kevin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
