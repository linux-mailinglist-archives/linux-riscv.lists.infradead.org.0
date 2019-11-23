Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0885F107C63
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 03:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Wj67zXEVFX6ndD/QTN0UzrrTHkzvGwCqgRJ/yqUGNw=; b=oroo6c5FsChQeG
	Ohrj1mNKxUqlx5RAAgZuyITD0Z3CWZTsDRuGppWrs2ZIzV/sa2Il2UudtHLZgbu65bQpMuUwNJj2g
	1vHE4APK4NkojAc4vb3nfG0bR/V8HeHMbjJXGM68044P3PDY97viT/91HA5Kzrj5dA+W/6U0srNG4
	FQndwDsnclSk+ezo228peyG5Uk5ED/7vWJ3g9d+EkGcy+j3TMsQdQCee9i1yKrasLC8r2CxFnfYbf
	VcJqakzXuRpRbZGe3RCtkbBcdv7EQK8jsvKr46LZ0DirtEj5nduC+ShBv6IhVwhM0QhQUpCIB7I+9
	A8MTMNeMR/sb2ymJiXug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYL17-0008Kg-QI; Sat, 23 Nov 2019 02:19:21 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYL14-0008KK-8k
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 02:19:19 +0000
Received: by mail-il1-x144.google.com with SMTP id z12so8971577ilp.2
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 18:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=SPBEDeCT3kwOdphyRQBZzPbq5J/p0MlFQsHze9zwisQ=;
 b=bQyo9ejqUVo3SvgNMyxvNK9k9+90qSUxDJ5A12wqws1rIj8SJo6Aa92G7Gjse8Nril
 zZARKjLCc2Zsgz783dnfDIeTXUGTLiQETm2X98yOAW0jdfPADM4XHNmDMNze0jH2TrYZ
 HBZEbJDX9allKnVDZsLPsy8Eoa/Up8HvbKiTJd+eNq0EjX1duDFptRF2II28hwqSc6W/
 Ly15u1HnKj1gsh0c6hVtDH5fdkXcoGRgLx+QMiZW0dnVtPokUJTjMPZvcQpczAIVRquq
 jYcYI3K7+/S1XODMR20cc8T6aKC3mscP4oMRK8l3UgA8SgsllRDczqiRkUyk9+26jHt+
 r4MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=SPBEDeCT3kwOdphyRQBZzPbq5J/p0MlFQsHze9zwisQ=;
 b=GQDqhDN0HiC1h1l2wnzNFc1h+6oCxKbW5+aNrd1NRa0xXA8Wi0PVrfoPTiX0eRLjrX
 P3fxJIlPF3CWt9P7BMqAyzlB57WJIpYNwPt71ibumHMJB8RjzpiRcMovCc5o2eWGO8pC
 5R7swZsjfBQtFnGdBheVPzc2SDpfWjanp4tajymZCHIDa6PktqKToK+MTW3pvFXHcdlO
 NbO5tRHiAuKJ/ZCEFcHX3UmtxlXCLcAp9fLmUYpPUASnhCyPQtLCrdy9izRyJX6Hub51
 AusqGr/POkNS+XN3mUhMZ1/VB2uDMXVbnGKNGAxAhjnd97tuAQoG9183lc6KyVQZFbCk
 xn9A==
X-Gm-Message-State: APjAAAWuffY3tlVpvLYmd1SrFudBcP1uaumI7eSHGLsUFQ6kxIlFhO22
 avzTF+nsIp11Hkmn4cftslPZvw==
X-Google-Smtp-Source: APXvYqz+zuCG6ZEnbxgw59YpE+zZ0csSZbj+iHT/o5FT7FRW5zsTsYuareLuZIMohCPWGZ9YVAEuaQ==
X-Received: by 2002:a92:864f:: with SMTP id g76mr18274844ild.37.1574475556992; 
 Fri, 22 Nov 2019 18:19:16 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id h15sm3497335ilh.85.2019.11.22.18.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 18:19:16 -0800 (PST)
Date: Fri, 22 Nov 2019 18:19:14 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: RISC-V nommu support v6
In-Reply-To: <20191031155222.GA7270@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911221817010.14532@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <alpine.DEB.2.21.9999.1910301311240.6452@viisi.sifive.com>
 <20191031155222.GA7270@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_181918_338032_772EC438 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 31 Oct 2019, Christoph Hellwig wrote:

> On Wed, Oct 30, 2019 at 01:21:21PM -0700, Paul Walmsley wrote:
> > I tried building this series from your git branch mentioned above, and 
> > booted it with a buildroot userspace built from your custom buildroot 
> > tree.  Am seeing some segmentation faults from userspace (below). 
> > 
> > Am still planning to merge your patches.
> > 
> > But I'm wondering whether you are seeing these segmentation faults also? 
> > Or is it something that might be specific to my test setup?
> 
> I just built a fresh image using make -j4 with that report and it works
> perfectly fine with my tree.

Another colleague just gave this a quick test, following your instructions 
as I did.  He encountered the same segmentation faulting issue.  Might be 
worth taking a look at this once v5.5-rc1 is released.  Could be a 
userspace issue, though.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
