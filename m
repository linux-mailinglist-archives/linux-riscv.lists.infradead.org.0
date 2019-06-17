Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C532247F44
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 12:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cK+wPQhttGj8tk2GCroWd4wgL6tqK9rrHAVaUlO9kuk=; b=UuvD8yvNnsc249
	otZFdGrPGo6BW6Y1kGbMGd8GZGQ2JgKDHs70nMWM0Uw+vsoqrFvhg5MXBLq5+yJLsWFW7sdaxKpEH
	oQbuhpawfbl/sXvhwcpvDP0tsrq2M+eljNnURfKGU/MSIR7RnwNlUVS4hcZRuAQqC9YRyu8HN1F6f
	6EYQh5ZyJDh1WCR14/TRzuA1WzTy33VSpFAt8bJ620eLPs4CtCkjlwnFZXc52qugTpNZkMjIOUI2r
	XxGAQ21NKZbvvnfslb5oH2rgFOr/P0BKjJjJHc1KagyjwlWKncKFX1hfV1KWhGnpcnFMWDzJnSlx/
	RNrhIgZ3A/W2aqNSw4Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcoXK-0006YN-9A; Mon, 17 Jun 2019 10:06:50 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoVh-0004YS-Kt
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 10:05:11 +0000
Received: by mail-ed1-x544.google.com with SMTP id p26so15354426edr.2
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 03:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=VGA9c22y9jIlHDQMx4uvOibs7sOik31ZYkHYuUn6B2A=;
 b=JyNz3YrQXeZQihiVS68RHnnLZ6o5UO46RUXYmjIXxMarXHjp3quUe0sTP89h2RU8qd
 t9xqv9wTj260UdX5wH35ZuuOvUBtisoit/qwfK5Kgpmzpzqi1hm9ICfiSCaa6aeOrD/O
 fnDMZPUTZVNhS3eCTNHUSRvBTwqgFi5qzNsMPubsWuJaAZyy/bf3WT0jpYzk5F3cpjGJ
 VbGYngxQwu3kBOwmupErYz+LZog68KzmNfkuKtjTK6pxTOoD474ZOc4ZxGlZV/+5UV+C
 b3tIuf1NKkxfHiXsESOMMHBxCIMFfYJ0qDfMiA9QurTcSwBttbk/tx5IZROKrZGAFOrw
 XN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=VGA9c22y9jIlHDQMx4uvOibs7sOik31ZYkHYuUn6B2A=;
 b=gupAkd5xgEuJpD4PrxlhrXyBU0avo0pbywrJHVR4DKU7eM9mDpScVrO4sLol9xtfAB
 U5+IAU+GX24YIFycdbIDvzrvLAhebOqIpOUQDDIzHSAunnv0Z2rIro94OpONxXf/A3bW
 AZFmf8kAtWki8K+9woreoaJlksCFcWQAPUAaCeHit/xO1E7nB4nn+2puldtbXjoEdWkP
 kbEHHmmCbwsKs+L4w0P21/ludMMLta2imuSN9LQFm/sq7jIrsuEE3DqGKQEHayuyBmvu
 bXYQ0Fi6UtjPX27bpFozQ9j0ge0Hmy+5CKVqg7C3qDE3aVJDJIHavAC5mk1aWTV3Z/Bp
 enrQ==
X-Gm-Message-State: APjAAAV7uDyWtyZZxpwal/hNuEUKCj5PM/v/xNJN2XIhHF7PnPEQ2zjA
 CZSTZijyOf29WqyDJLaulTTlvQ==
X-Google-Smtp-Source: APXvYqxgX3WrGXoEnt9ZLFi/AcNRTFEhFUprMEbyI8apql360t1iTkxRuRY3ryohJKMoEwBxTzhyYw==
X-Received: by 2002:a50:b962:: with SMTP id m89mr53812367ede.104.1560765907918; 
 Mon, 17 Jun 2019 03:05:07 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id m3sm3433752edi.33.2019.06.17.03.05.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 03:05:07 -0700 (PDT)
Date: Mon, 17 Jun 2019 03:05:06 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
In-Reply-To: <mvmpnnc5y49.fsf@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1906170305020.19994@viisi.sifive.com>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <mvmpnnc5y49.fsf@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_030509_807761_32FE17B1 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org, ynezz@true.cz,
 linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019, Andreas Schwab wrote:

> On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> 
> > Looks to me that it shouldn't have an impact unless the DT string is 
> > present, and even then, the impact might simply be that the MACB driver 
> > may not work?
> 
> If the macb driver doesn't work you have an unusable system, of course.

Why?

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
