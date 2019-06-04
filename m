Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628AB34A9A
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Jun 2019 16:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ERHufnbv7P8n3WhD5myZj24qf0PutXz7tIUvqRinlE=; b=g50p7J23I6vqe4
	bdDW/pAiTFAuXfbN2GI1WX1K9pqItMhIPUYY8u61mbk2F3lVO9JeD0TX1uJCAXcomDDHDxx8ksEnc
	WnDS8MR7DKC5g+Uew2sCevxqZhkDt2JaXEKGwh233WPvgDsWF3VAds3nG7/AiaE59aQccinVnkUDt
	tI+I/neIMfoi68BUuHuNpFE93zd+Mk6Z2y+tsPx0spcaHH6yiHNBFjMpmY6hMpAs+XKctXBYDkyvj
	tV4+3xyEDYOemSNhIDEtazEWiY7mc/Akdv9w186U6pOH06SFbjfHcwQPjTnaNT6UCfRoQJTS1Wg1R
	H4rd68T9P/byJZV6erEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAct-00041K-9j; Tue, 04 Jun 2019 14:41:23 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAcq-000410-FY
 for linux-riscv@lists.infradead.org; Tue, 04 Jun 2019 14:41:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id 16so314100wmg.5
 for <linux-riscv@lists.infradead.org>; Tue, 04 Jun 2019 07:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=JYu/Sf6DYA1LvVsAE9hAP2/zUxBfGo6g6Cc3589jfpA=;
 b=QFezxepBvrgiXhmKm1McpNMYyYT4mjgtLdF0nIx340LiL8knK4tBoXTMiANhRLdvUz
 WT1jjJjAx7LRstuYIGqb5S2luxmEgQuy8ZCzLwt4Nv5SPg9u09Z6R4GTFbIjngteY7DQ
 bZfU38bR0MYhdpoYlf8QngSBFdr5U4n2PClMG0cNR/0FiS7WZNUKJBA6oobE2kj39HJ2
 X+7KY+xPSi36O9Jc4LSb+sJGTx3q25GGVKVevxhS8ZanmDbnT5mPMWZMB7ood8v6nsGs
 SQqWV22m1Y89u8IMFn4hhhBfibFC4h8/rZWieu1EHOO0eXT2T2GtD/blPXf2PYWYE4h9
 mfKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=JYu/Sf6DYA1LvVsAE9hAP2/zUxBfGo6g6Cc3589jfpA=;
 b=b5srRchequT+DUgeR8uowvHDirV11GqQ9YgtllidJlfZdZu9ayIoD0QQChDKWUF1+E
 Y8RR4PA0gNKXPCrCM5WAnjkMzt3giHpqNTLlRfz88xi4/9lAHSJBJrGAkS6/qXG2oyfa
 BUl4zOCBQpUjeGrv6fnpE5LQCMEkD+uVe2LuqQ1OA8Rwnkys7WtjdLPNeKWvTgV7m0y3
 XOKwZcGReoMFqXDjeIymdi2nHe1IM4oLQBLg5miThjTGJ844n/9ToT8uy17lvD+prwbc
 ps3ZNKnUXAnjlmKq4ObfvxXAdYX1d7AZvN48eF/7Hk346AltkA0ulTGYkgeJ1qftCkam
 HvIg==
X-Gm-Message-State: APjAAAUNhQz2/AZMcWlp/F1jmk80YAvsjmmtAERk96uermf05eq5sTmd
 UXtoHhXZe7KL8MDSqYhcD+yliw==
X-Google-Smtp-Source: APXvYqyc1QeM0/4vvWBgZDrhojj2xAQnDeiCexy1d/QXuq48dTOxl1LvD7DQ5J2L9IH0Govxwc79Lw==
X-Received: by 2002:a1c:188:: with SMTP id 130mr18108451wmb.18.1559659279143; 
 Tue, 04 Jun 2019 07:41:19 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q14sm15217623wrw.60.2019.06.04.07.41.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 07:41:18 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 5/5] riscv: dts: add initial board data for the SiFive
 HiFive Unleashed
In-Reply-To: <20190602080500.31700-6-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
 <20190602080500.31700-6-paul.walmsley@sifive.com>
Date: Tue, 04 Jun 2019 16:41:17 +0200
Message-ID: <86pnnth0qa.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_074120_519857_2B73F700 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun 02 Jun 2019 at 01:05, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Add initial board data for the SiFive HiFive Unleashed A00.
>
> Currently the data populated in this DT file describes the board
> DRAM configuration and the external clock sources that supply the
> PRCI.
>
> This third version incorporates changes based on more comments from
> Rob Herring <robh+dt@kernel.org>.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
Tested-by: Loys Ollivier <lollivier@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: devicetree@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
