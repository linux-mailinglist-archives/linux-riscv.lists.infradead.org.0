Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B3E85020
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 17:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wN3ZuyQ1raO0X6gC6F4Afu2JGb34YDbhE39KZ7np/eU=; b=Q24F15pGWbh5BU
	kdtPZRrgQeLz07u4cDT5MSJJDj+SloFxLgis9EpFFic+CxArWsshy2YEuYoD/fBVvXvaOBX5raCPG
	MwQwiILfT3i0rqsz4IzGJ8Bcs2AH6HIv3qS23BV8vKtPNjwyOtgI/ZhEtA27E6XonJs/PM2K0DQ1r
	olGbG6BnfK3Do3bmMmwLyqxOmtus30YR7UQWfyYSHy3KY8ayupXA2XkSM/q0jKdGllFwKbScNSUnu
	8WbiPCdwwKd68wqVnju4ZosxvxmkcYfPQ3Dc8vY+PxBHG21jz23vFNTrnxWvLnbMAOBXELk2P6UiH
	MknwIqJZjcPViU5jfUMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvO3k-0000d6-UJ; Wed, 07 Aug 2019 15:41:05 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvO3h-0000cc-Au
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 15:41:02 +0000
Received: by mail-ot1-x344.google.com with SMTP id n5so106138182otk.1
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 08:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=HAXloeaOD6Dgz0TeHmNMEkOukZ7q9iclSHb8TPMnnoM=;
 b=MpR6TPeY9ksExXbV1M0WZ4jh4/JwJ9vWGRF9Q289lrNZt6ApwrI38CI+eNBR2DkMNa
 Z7kScwuTmiRNYxUCmrhHLisuDE7Jq6jOB6Uy5ZU+gWd24CE2XuQKs/7HOsVWT5q4QYua
 0uVXOCj7D12af1thKryyrhhJNQYJeGuHuo6mHxA3Em5MvzfobH7So0FWtWQRRIAv9cpK
 SKGbb+p6Gx21xSqHvNDTgXbWQ6wLvI8lAggwhl53uqM/EKM/49TBSh42hrAepJq0swFZ
 IrsJjSxAGrDjL7077HKRQ9LC6pgVFEbioMkeUxrVjzA6YqVgZD5u3o5nUM0Nz6aGTkLd
 KPNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=HAXloeaOD6Dgz0TeHmNMEkOukZ7q9iclSHb8TPMnnoM=;
 b=EPLPWINcH4ySX4bH/AOY23VAOcL57n4H22hbdgnUTMDffx9WpOlFQv632iUNy1/PId
 mCmTlSzrQ7xbyTUAw3LkPUkf1ZQyMe3qse1ho5B0BsCypmji8RXAEWXuHTEvfVpxbpnY
 T+7znSDB43hQTIeRfd00/N/vzE/q167w3UjizzD17u7jBl8xahhjmJIb8MAoMNH/i4NW
 tWpwGrRbGu5pcLUT+qegS+Od4gxYWKCJ2xFzh2Lm5oOkXNPRhkV1b4VtK/iPevKprngx
 UXM0BDU4pMBrqoKBOlEUTALJI/TiMv2zitcB35bTW77mWsG20mhj/H0RTPaw7ishV8be
 ppHw==
X-Gm-Message-State: APjAAAU9/r3lkZoHVQTIkvFAQ5RwlhnKe5Hgoi5bN7UcmvravLBgZ4l7
 Phyo+t077S+DDS43Vk6W9/OZiSnRZsE=
X-Google-Smtp-Source: APXvYqwyIB1L+QiELH/YNHUY/Gf3N1VW1Uv2dDPLw4xrbndDgaWQH9vQgWS83jDCgfoU7TiFL406Bw==
X-Received: by 2002:a5e:8e0d:: with SMTP id a13mr3602621ion.28.1565192459955; 
 Wed, 07 Aug 2019 08:40:59 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 a1sm68914330ioo.5.2019.08.07.08.40.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 08:40:59 -0700 (PDT)
Date: Wed, 7 Aug 2019 08:40:58 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/misc
In-Reply-To: <20190807152438.GA16495@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908070832500.13971@viisi.sifive.com>
References: <20190807151009.31971-1-hch@lst.de>
 <20190807152215.GA26690@kroah.com> <20190807152438.GA16495@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_084101_432929_09511DE9 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arnd@arndb.de, Greg KH <gregkh@linuxfoundation.org>, palmer@sifive.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 linux-riscv@lists.infradead.org, mchehab@kernel.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019, Christoph Hellwig wrote:

> On Wed, Aug 07, 2019 at 05:22:15PM +0200, Greg KH wrote:
> > > Fixes: a967a289f169 ("RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs")
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > ---
> > >  arch/riscv/mm/Makefile                            | 1 -
> > >  drivers/misc/Makefile                             | 1 +
> > >  {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c | 0
> > >  3 files changed, 1 insertion(+), 1 deletion(-)
> > >  rename {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c (100%)
> > 
> > Why isn't this in drivers/edac/ ?
> > why is this a misc driver?  Seems like it should sit next to the edac
> > stuff.
> 
> No idea.  EDAC maintainers, would you object to taking what is 
> currently in arch/riscv/mm//sifive_l2_cache.c to drivers/edac/ ?

If this driver is moved out of arch/riscv/mm, it should ideally go into 
some sort of common L2 cache controller driver directory, along 
with other L2 cache controller drivers like arch/arm/mm/*l2c*. 

Like many L2 cache controllers, this controller also supports cache 
flushing operations and SoC-specific way operations.  We just don't use 
those on RISC-V - yet.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
