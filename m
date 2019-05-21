Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08517249E7
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 10:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZdUE6aUeAOfPz0IXWO95WzIA6Y/IRnH1iRGQ1PGTXM=; b=GZ6nzIpbOScslS
	Obe3pX9GmA6Ef/A0qcdD5k3rsv++OSkYYtWF8u6G5lOh++TVCtmDUeWRVEBVPyonkP044BTt+QLtW
	kgyG9H6VQQp646YTcl9DKOx7u9HzDTK56y3uKBLvjAHm92rrjv1eg9UUAdj67eThUKzaafx1p+YuU
	kKED+hsnpKzX8w4aDe5O0qHFdrQhjg936WU21cGsw/DfD7onXX1ggq+pgKM7r6NrCP6rkqtXrTNKF
	jo57Q1AJ/n3Fy6rb1JkqEKdJOZ/cU8AMqCkIIqSg2KS4IY0eszHVoHXdo+AWfW1eScZrAK1r9cLRj
	AE0IzH2xj+wHB779ieWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzs1-0003f1-Ab; Tue, 21 May 2019 08:11:37 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzrt-0003UZ-Fx
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 08:11:32 +0000
Received: by mail-io1-xd42.google.com with SMTP id u2so13218413ioc.4
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 01:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=RnThzzUHSQZwdGPWAHShID/REfskUYDY2HJjG1jNb4I=;
 b=BgMbzYM79a+p2TrvR9uxu2/OVAD0AZ7E8erbWgF6BZ7hwgZjD6C+q4PMoXODRc9dos
 Ki7kuEORyeNJoSDVnkokpd4L7HVmkv5shTk2bw8IKQjJaaL0IGz7w4j0uOYnDq+bqPVZ
 N6liRBzodJ6AalQP3pZC6GAwT0i6u3nJPDSKfQ4hPcI6JFBieFrvPz9yxOhtRif0XKrM
 LCNK0RKJFnmdzPq/HRyeDYZ2S59AZNRHFCSD/vBxtKXekfAZSgu+wIveokOhaDr0VqFU
 QmWDV0p0ps0i1/r2rZ6y5P18noSRLC0NTou88SAYFhsMjK3B3b4d9LzdRkeCW7cl53P1
 v1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=RnThzzUHSQZwdGPWAHShID/REfskUYDY2HJjG1jNb4I=;
 b=EmB1wdoxKXlJffo4CH1T2FrEy/E2eEUBDlKcGgBcr3sYHH8zqYWcG7LPPma/vP2fQ2
 jZNQ/brw7bxw5qrAjHFQp+HzmYqLiiaX8RB7zRdmQF/9i2btkhN5WQUQ90npQ7IwUn47
 BYDIaET2PGultUUzhG/ThLd5qR9ILQTYiBi2V+HfBlCN+tK+3GLroeP9HLBUH1rUKxOh
 ZylKzanHvRaI0kjjl+wpd0lxKnVG2KQIg0ES4K1hvXntYNAmk1Hf95RZ22WsCD1Iveev
 cLoa2TEeSOBF7r/Aw+/YBhSvBSzI6nA87wIALOZHvTPYk9kKFYyHAN3eAeZXhM0AuqFR
 cO5w==
X-Gm-Message-State: APjAAAUy7cnHyeoLMROi/k2AlOZbj/qw6rAnK1wCoPhRkOmZp98ws4Bo
 CQOMdeprsFQas/55BsasXzFAIw4kSRg=
X-Google-Smtp-Source: APXvYqzqWn+cSzhhbOaL+KLpktH+wZoMdtW0303kacHPjvZu9zDuJzAlbmaNkxEkFDjQAPxPnecjFQ==
X-Received: by 2002:a6b:e412:: with SMTP id u18mr47018533iog.132.1558426288439; 
 Tue, 21 May 2019 01:11:28 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 b18sm1001759itd.40.2019.05.21.01.11.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 01:11:27 -0700 (PDT)
Date: Tue, 21 May 2019 01:11:27 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Wesley Terpstra <wesley@sifive.com>, Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] riscv: include generic support for MSI irqdomains
In-Reply-To: <20190521063551.GA5959@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1905210110220.24268@viisi.sifive.com>
References: <20190520182528.10627-1-paul.walmsley@sifive.com>
 <20190521063551.GA5959@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_011129_807162_ED58FC09 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul@pwsan.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 20 May 2019, Christoph Hellwig wrote:

> On Mon, May 20, 2019 at 11:25:28AM -0700, Paul Walmsley wrote:
> > Some RISC-V systems include PCIe host controllers that support PCIe
> > message-signaled interrupts.  For this to work on Linux, we need to
> > enable PCI_MSI_IRQ_DOMAIN and define struct msi_alloc_info.  Support
> > for the latter is enabled by including the architecture-generic msi.h
> > include.
> > 
> > Based on a patch from Wesley Terpstra <wesley@sifive.com>:
> > 
> > https://github.com/riscv/riscv-linux/commit/7d55f38fb79f459d2e88bcee7e147796400cafa8
> > 
> > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > Signed-off-by: Paul Walmsley <paul@pwsan.com>
> > Cc: Wesley Terpstra <wesley@sifive.com>
> 
> Well, this is very much Wes' patch as-is.  It should probably be
> attributed to him and you should ask for his signoff.

Yeah.  There aren't many other ways to do it.

Wes, care to reply with your Signed-off-by: ? 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
