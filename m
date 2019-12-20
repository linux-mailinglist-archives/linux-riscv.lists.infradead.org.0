Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214701279C1
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Dec 2019 12:05:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gBcQ52Vc0toBPV7dKKLgxOaPG2pGefeVWpEGH1otM58=; b=YVSf/J3+ezSZTHVq3OFUa9Rf2
	9H3QRUHpfai2Bp1c1xkyy+1mRtWNi1jjF5TwjCFm5sk9YsUveDQ9c/eeLDAcDGwRjx0mCMYns71R7
	68mBdZyvSrmqJiHBkHg2DMOSBczwXvhIVEdcL6inNqWWQmWGvj8erWLG+7yxw3Bk7NG3bsfwG5tBC
	MrxMpGOxGOQeu2B8oajLf/Ds5XZp2Dmyv864Bmpe1nGuDrYYYA0o2ZDqg/l1VU1eKDjZ1Edm2CniS
	bd7/oUmW9nbPfrNZ4+vl3d8B+8AIpUYVqzFG1LtH3bz6RSxUZQ7vt3Cdj3T2CsujsHXsZ4T0c9KMa
	lPnJG3u/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiG5p-000755-68; Fri, 20 Dec 2019 11:05:13 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiG5l-0006bs-A6
 for linux-riscv@lists.infradead.org; Fri, 20 Dec 2019 11:05:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id n21so7411020ioo.10
 for <linux-riscv@lists.infradead.org>; Fri, 20 Dec 2019 03:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=gBcQ52Vc0toBPV7dKKLgxOaPG2pGefeVWpEGH1otM58=;
 b=merEjebAIqoPaUC/PNFBkpWO4eKmUGZ0ismOE/vXnE0l4fbeEDc8cJLXWdZUJkgcVz
 I4oVx9t9r987Zncz/jiwh6IYMXE/wrbw+WQrOXSrkZoGdjVaCzvUHulxSJIY3ez8c/6V
 ubwc7VcT0XpXezefnAUG4taZylsqNAtvHnw63oLsa/r6aDFpZtqBbyJy54j8wl1vVjGN
 xfcLhLUYcVmvmVeHgffNnrsry12cd3EkZyEPcFt4EWZfLg1Fc41TExJuZ6EyhA1MLVyf
 q3v9qgb1Ipx6ujF5eoFo2N4jpvaKQ6er8GBzCSZfz7WDXKTZwQNZmtiElKcxs3rtwRuX
 S/Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=gBcQ52Vc0toBPV7dKKLgxOaPG2pGefeVWpEGH1otM58=;
 b=mfvS8O9vUVq438JYsQ3fRSXkCc6Ja8QSNDNXCwGmr2ETh6+0950q/KTsuEujzPJIgz
 Yz95Km/+6WRAhjU9ovF4BBHNrujdv9lBznC9C8LZi30jrpB5ZcDpiUHHsi+hMP2slALl
 SNohqAWVZodreKS+Kk3O6OJIRf8y9ayUhlmk+ouOGf4Yux5ruPCL9wGu8ixgKGV+q1Ap
 dbGhBy8DBb4RKNvFqXTFRimfP5Z6TYHEW/GHtDOwhEnrxrrTMX5R8OrxFbI7g5kGI0uy
 BAExYsTVHtlv1Q3W8CD+tpSWCd7Pm7035uczBSBVE/8h+Nhe4D9Yy3DKkHVwJl9wTXN/
 ggyw==
X-Gm-Message-State: APjAAAWD9kdEEadzM0voo4UCWzRzEXS0AvhA6JL0fBKkY1C+vzLfHkqE
 7T6S60cEPRFkyIM8NLcO0JdYRQ==
X-Google-Smtp-Source: APXvYqwl5mnguF41j8sTQFLsJ0w/8LUOCH1dsK93T2voO/9qXSqCWGgYwqdAm3/fS+DpxABS0Nds7w==
X-Received: by 2002:a6b:8f41:: with SMTP id r62mr9306222iod.140.1576839906696; 
 Fri, 20 Dec 2019 03:05:06 -0800 (PST)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id l83sm4396947ild.34.2019.12.20.03.05.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 03:05:05 -0800 (PST)
Date: Fri, 20 Dec 2019 03:05:04 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] riscv: export flush_icache_all to modules
In-Reply-To: <20191217040704.91995-1-olof@lixom.net>
Message-ID: <alpine.DEB.2.21.9999.1912200302290.3767@viisi.sifive.com>
References: <20191217040704.91995-1-olof@lixom.net>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_030509_549887_A2F474FC 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-kernel@vger.kernel.org, hch@lst.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019, Olof Johansson wrote:

> This is needed by LKDTM (crash dump test module), it calls
> flush_icache_range(), which on RISC-V turns into flush_icache_all(). On
> other architectures, the actual implementation is exported, so follow
> that precedence and export it here too.
> 
> Fixes build of CONFIG_LKDTM that fails with:
> ERROR: "flush_icache_all" [drivers/misc/lkdtm/lkdtm.ko] undefined!

In the past we've resisted doing this; see 

https://lore.kernel.org/linux-riscv/20190611134945.GA28532@lst.de/

under the principle that we don't want modules to be able to flush the I$ 
directly via this interface.  But maybe, like moving the L2 related code 
out of arch/riscv, we should just do it.


- Paul

