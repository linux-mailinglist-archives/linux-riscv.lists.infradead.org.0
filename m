Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A065EB849
	for <lists+linux-riscv@lfdr.de>; Thu, 31 Oct 2019 21:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozqGP6vy9pGpHt0rlw26mJvepA6QvxJsnSCzq6aJg3Y=; b=edvRu2iU5Nupln
	z+CTu75dYQZxh5uSfP7Q4s74+KoPrFAM58jTcSC/NSQs0Ss5UFj7dq0y03f/3aHblapKZwK/FFqXE
	ULOo9kZByk/TK4qKyPO63JqbsSKI0N8zknxsmXlY04zmBz68edhGhT9OwYR3ydqfBq4FXvQBB5dH9
	pBsB8p5/ZYicH21wZg1RF2QrFoAUX+DQQJvMK/fg/Gy29cpSH24PAHnJ3Hd3W7FUGZIlpysCDiDep
	wMuLkmyIa7nNFMdjGLU6k3TvSIkSwhVYfgP/0BtXnCmFZLUb6Hh8VT9WZOwym0qLnYO36MgVmBIDf
	17E/XtaJFfKOfyuxCqcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQGpN-00082W-QC; Thu, 31 Oct 2019 20:13:53 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQGpK-000820-35
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 20:13:51 +0000
Received: by mail-io1-xd44.google.com with SMTP id c11so8202231iom.10
 for <linux-riscv@lists.infradead.org>; Thu, 31 Oct 2019 13:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=edoR3drkOe7+sAAN2C14zGy1y4TkfH6JZVLoKAB2I1c=;
 b=WJknctNbQNnq4Hj+o22VpWRFtQqoOiBTkKHsk+HRvEVy3BoU1PzUyESIxTdd5FfBNH
 Da4DbpwX4BAQlSPVaEP7HsjwY9tNc8Rk0+O/ClWYh/dL8GvxUSFIlW/xtAbIp8ssk2d4
 4QMY/4gASgyN4iTUy8LHtcceXfR3Fmirw1+KY5PwZIJ9oFB1X6Lq4K59XRIj4RQGfD5Q
 HyWcdFwWXhpYTk5RAIfNZVGGNH1JTPuKcCPvlNICWWRvaBP4hzyhKAVU1SKNYydCzfKm
 qlvJ+WFDWwM6b19TOzxn0xl7auPIlqje8Z+XWsHJNp7ymmWMhE3tHe7oKrh2Q00rf+iN
 FPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=edoR3drkOe7+sAAN2C14zGy1y4TkfH6JZVLoKAB2I1c=;
 b=qMz7IgPpI+ivGA+SzLZEmoDuimKS9hgxt2eo3gE+JovXuFmDZr15ySlOxpwU5aMC3a
 c0c8Esq2U+7Wa0maD3KrI8oCqsRZqPCOSQw+C6MdsNqgEyCq0YVEFxZmYTcGhx+0Mk3l
 23usji7cJQLDOrY0TZJUQfThHyX0xFF6hsMtiVv41TS6/JSILCVjIfJLypPzT5muCDFS
 NDfr201ID9XpRntYTMI49U+kduaIIfNnHqv7B8j6ddRKVEFzw0OAzYbd4Nt4x9kBSQjX
 AtDkbbSmCZCTLgHJUXf1ItkhU6e/+szIOjYJ8wEZDIL4Suw1+xTucoNd2eI2SnGHIxVT
 RU2Q==
X-Gm-Message-State: APjAAAW6HMtZtaWWoAuDB6C7u8GYGLLHPt1F2VgsN9irZZWwb37G4y0Y
 btB6jYl2GCNSUlwy8wL2iSE5fGbd23o=
X-Google-Smtp-Source: APXvYqwu18NgGtxYghLIqdGrPlyUezIGUUPxppmYLKUKXEShdep9/77fPJTZMl39SlwLPxfbxPxnCg==
X-Received: by 2002:a02:cc66:: with SMTP id j6mr1049512jaq.61.1572552827929;
 Thu, 31 Oct 2019 13:13:47 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id h11sm436841ioq.57.2019.10.31.13.13.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 13:13:47 -0700 (PDT)
Date: Thu, 31 Oct 2019 13:13:45 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: RISC-V nommu support v6
In-Reply-To: <20191031155222.GA7270@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1910311312540.16921@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <alpine.DEB.2.21.9999.1910301311240.6452@viisi.sifive.com>
 <20191031155222.GA7270@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_131350_164083_CACDE27E 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

OK, good to know.

If there are other folks out there who are using Christoph's nommu patch 
set, it'd be great to get testing feedback.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
