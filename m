Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 854E18BEEF
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 18:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQz0ZgyxwfK/BaToahcJNv+BqXNv0JBk0Y8Vd4q7IGA=; b=UA3vIu61zXCElc
	jd63H4T/3GJQicltTLWpcsT1ntDHHxd1Wuzo+Ewum+Tw5U4iKmXFnedF4rXiUyDEhmDc+FvJ6BW21
	l2mIWcTyMDzavW93hzq/z3rhVjkkZWK1/aeJeEE+mAKCLoZzzzHM70+h8dwizRoK1NReSurQBg1A7
	Cq93VGbC/soadMLZ3dYsrh3wC4nWBNLwrszWCTfc7kYeZ67cEcNT1dp7aIKmIdv5UB487cJ9hAzCP
	hFfJokpEQB7RBAWmyJXhk09XUGAFRiswSMwEvqvPwjOqSE8Fa5AJDzb3b0wlRGmQSMNTW0C1h6LrW
	gZXy5i/lFGCfsEBsgXaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZyb-0003GK-Pc; Tue, 13 Aug 2019 16:48:49 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZyY-0003Fw-0p
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 16:48:47 +0000
Received: by mail-ot1-x344.google.com with SMTP id w4so14684ote.11
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 09:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=wWYXt7jx7G31cd0rE9luks4j70Eji+/vHa4Z1GbiX1s=;
 b=PVaDn1YePRT9j9KWakxbJ5aZbPHOe1J33ryNWuvT223ufkBNGNMfeasLJ4OrxmwPQZ
 zC9YYVf5EuudnD8g2gF+COcciyXunWMzIWBn3kPO03qtPucFcPSAcXnoBJ6kR8EpWhD1
 n2kN9d52DP0eEmM3jbQMP5LVdVgEvBpuKKVeVwA4eSx6BVuM8ibVKAoD7BR6I9ULnXs5
 FAoNg0DL0iJBEqca3QwrsWRVpN2G6Rn3ar6llSZc784HZGsYUJgp2ajlMF+fYDPicuzH
 95qrxSmcS0SEyuOAfEnmAETTEAs+VX2awtZGt/ux0Jucg+YEytTtvv1a97y1iTAEt4ja
 F88g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=wWYXt7jx7G31cd0rE9luks4j70Eji+/vHa4Z1GbiX1s=;
 b=QZb/kE5mfJ3iMtXuvAx6zzPz6pNrrz9hTtkrxOUpadTLclRqeaw/sSyBtaxgVSqILY
 l7rtGCGb5I8IIpJekY4mN6egIiV/xQjXgFuFY6jbEAn7LVhPCpHcOOpKpVBXafj5dCFC
 nmxSarCHYfbwzQHlk3l0nikVZTn4WR2TxgtTOdr0yy/zxei5c16o9g1R7Qy0iZF7Wl4d
 nKJFCK525ARq2FCfrnJuXjpKX4jtfUv+6IsyMUJ49kxyfe3I9viiCMlynXDtMeS8DH66
 coAJZGiNXKFwBJoH8glt/V7qU3+q1+4iHfyZVhrJDewANApREKm4mzDjI6X6Na2kfuhg
 G6Rw==
X-Gm-Message-State: APjAAAUwYngWeyGqS7f1j7eM4f75pg33xJOGtuT4gxpLm26fii3hWPlH
 is+7LRNZdn/NOMxxpAnLYbKLxg==
X-Google-Smtp-Source: APXvYqxPVuDBsGAd9o9o1k5X+B5nMlPiCHWLeDxvNl/FUOtJzCoioboXTdGD/sGypvrgZDoyB/qP5A==
X-Received: by 2002:a5d:8497:: with SMTP id t23mr39094733iom.298.1565714925017; 
 Tue, 13 Aug 2019 09:48:45 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 t19sm91323213iog.41.2019.08.13.09.48.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 09:48:44 -0700 (PDT)
Date: Tue, 13 Aug 2019 09:48:43 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
In-Reply-To: <alpine.DEB.2.21.9999.1908130921170.30024@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1908130947130.30024@viisi.sifive.com>
References: <20190109203911.7887-1-logang@deltatee.com>
 <20190109203911.7887-3-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
 <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
 <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
 <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
 <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
 <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
 <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
 <alpine.DEB.2.21.9999.1908130921170.30024@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_094846_073664_A86525C8 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, linux-mm@kvack.org,
 Greentime Hu <green.hu@gmail.com>, Olof Johansson <olof@lixom.net>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019, Paul Walmsley wrote:

> On Tue, 13 Aug 2019, Logan Gunthorpe wrote:
> 
> > On 2019-08-13 12:04 a.m., Greentime Hu wrote:
> > 
> > > Every architecture with mmu defines their own pfn_valid().
> > 
> > Not true. Arm64, for example just uses the generic implementation in
> > mmzone.h. 
> 
> arm64 seems to define their own:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/Kconfig#n899
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/mm/init.c#n235
> 
> While there are many architectures which have their own pfn_valid(); 
> oddly, almost none of them set HAVE_ARCH_PFN_VALID ?

(fixed the linux-mm@ address)


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
