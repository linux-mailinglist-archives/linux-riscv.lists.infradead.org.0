Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686661BD640
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Apr 2020 09:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S6vndLuaeXb6bB9uiepv0GIEKfn+kuOCySzTjAzHsMU=; b=FTxI1TcM168NhTo12HR+cYni0
	AFhucaobpuFyB8SY0K4K2LLLamceRMceX7TmqYuEqMNFnyNcxLEGfQ447alOIBVpxH5UuhTiZS0Qk
	tZTe51Di68P1Jz+aCfgrsWovkrX3KpHu2agykB1EAWFPB2JYmnFToZvuVOBkY2qkVF5jnoIW4RsX0
	VPOh41K3QLpwN/COw1ZKjZ2vuLf6TnG6PXBS4d6+1DW2RXuHfimC3BnGCdvKhogzJYVY0vupcYpic
	AR9z7Yvg64O9s1KsXFEG89e4RBDlFirShbW6Si3lSjNT23yaVIsE3a2ooAD749bxPLF5hYxPK6bZf
	xRiGgrvEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThL0-0003Tw-Bi; Wed, 29 Apr 2020 07:40:58 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThKv-0003TR-WD
 for linux-riscv@lists.infradead.org; Wed, 29 Apr 2020 07:40:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id d25so786897lfi.11
 for <linux-riscv@lists.infradead.org>; Wed, 29 Apr 2020 00:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S6vndLuaeXb6bB9uiepv0GIEKfn+kuOCySzTjAzHsMU=;
 b=FDLgGsPFHgxlMBjFNmkfnE/Jr4mIXNB0ns9FLOBMmwPRIyZAlEnLT6cTCgVk6vLaCW
 ttoowgf6aOut7y2PxCcyMO7iByXRbafn3qJt+BEsv13U45mOcDHqmNm3MT7KhHXp02s8
 qNIODLOep7LI6mc5PkRyIZQkcJPxNxdJbwAhk7uhCmWq48lMQcj25Pu5LwbYN2bIMoAn
 gniHdU1zqIfIAJJQEwtEf1I9od2tl1RQ+3At4RTciCU3gNLSIxB+sLpX3Z4BQC9m6hiP
 K9rXPnNmEK76QnKzxjl6YrH0FewLuscVAmm2rpuLKi0NVxWe4nau8n7rvoBvBx9GwCIt
 6YFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S6vndLuaeXb6bB9uiepv0GIEKfn+kuOCySzTjAzHsMU=;
 b=CLnmrKQzv85p1OTHNN7dWKu913Xtpgq+jgbxvUIqjF7j60E7XI+nIQ+Fb3Vzha5PYK
 dn7sUF1REYY6CsBdJUq/iuy7CKneExMHRpUNENyUW0rnlYC8sRaWhfbu299b1PEtKwyf
 v4MVbTVALQTBkwFe+qs2bsI+2k8BK3Xmt513biFm1cxDI7whTm+wIUhDjG7dAUFA0zQ2
 IyjLfAiKwsnshiBdXI0sJ61YsPE1psB9WK+xYsqdUY3VX9RDeCtld9wop0Qx623ETW9s
 fl4e56HZGvnewHSni08AUiriOC6gCYo0xOuDvKSld2G8OE7n3Lkl0s58MKPK/3hp9nJM
 2fvg==
X-Gm-Message-State: AGi0PuYJpwNxruLIjLhIMlHCMEOBIR4oauPqYb1VaIGip8akRtveWGzm
 l//Hl7HzFCnSFq4ZCzW9UWWD3/BBlkYDF5Hm2lw=
X-Google-Smtp-Source: APiQypLMoZakO/8ExLncaCmnnOtNMCr57sttCek7NXn2hztLvfuFdT+oQQxp8aJPkYV2kumt/lzBA/5xwKhJMFDHg7I=
X-Received: by 2002:ac2:5c07:: with SMTP id r7mr22066594lfp.160.1588146051463; 
 Wed, 29 Apr 2020 00:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <1582175719-7401-1-git-send-email-yash.shah@sifive.com>
 <MN2PR13MB3552ADB09621545F67A914E28CFA0@MN2PR13MB3552.namprd13.prod.outlook.com>
In-Reply-To: <MN2PR13MB3552ADB09621545F67A914E28CFA0@MN2PR13MB3552.namprd13.prod.outlook.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Wed, 29 Apr 2020 10:40:15 +0300
Message-ID: <CAEn-LTqUWfiV_QV3hyCQ9YouaHCzNFPq=WABfioNEiMJVP8ZVg@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] cacheinfo support to read no. of L2 cache ways
 enabled
To: Yash Shah <yash.shah@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_004054_032109_FDE4E353 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "bp@suse.de" <bp@suse.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Ping.

I think this one got lost in time. I don't see it in v5.6 or v5.7.

david

On Fri, Mar 13, 2020 at 8:03 AM Yash Shah <yash.shah@sifive.com> wrote:
>
> Any comments or updates on this series?
>
> - Yash
>
> > -----Original Message-----
> > From: Yash Shah <yash.shah@sifive.com>
> > Sent: 20 February 2020 10:45
> > To: palmer@dabbelt.com; Paul Walmsley ( Sifive)
> > <paul.walmsley@sifive.com>
> > Cc: aou@eecs.berkeley.edu; anup@brainfault.org;
> > gregkh@linuxfoundation.org; alexios.zavras@intel.com; tglx@linutronix.de;
> > bp@suse.de; linux-riscv@lists.infradead.org; linux-kernel@vger.kernel.org;
> > Sachin Ghadi <sachin.ghadi@sifive.com>; Yash Shah
> > <yash.shah@sifive.com>
> > Subject: [PATCH v5 0/2] cacheinfo support to read no. of L2 cache ways
> > enabled
> >
> > The patchset includes 2 patches. Patch 1 implements cache_get_priv_group
> > which make use of a generic ops structure to return a private attribute group
> > for custom cacheinfo. Patch 2 implements a private attribute named
> > "number_of_ways_enabled" in the cacheinfo framework. Reading this
> > attribute returns the number of L2 cache ways enabled at runtime,
> >
> > This patchset is based on Linux v5.6-rc2 and tested on HiFive Unleashed
> > board.
> >
> > v5:
> > - Since WayEnable is 8bits, mask out and return only the last 8 bit in
> >   l2_largest_wayenabled()
> > - Rebased on Linux v5.6-rc2
> >
> > v4:
> > - Rename "sifive_l2_largest_wayenabled" to "l2_largest_wayenabled" and
> >   make it a static function
> >
> > v3:
> > - As per Anup Patel's suggestion[0], implement a new approach which uses
> >   generic ops structure. Hence addition of patch 1 to this series and
> >   corresponding changes to patch 2.
> > - Dropped "riscv: dts: Add DT support for SiFive L2 cache controller"
> >   patch since it is already merged
> > - Rebased on Linux v5.5-rc6
> >
> > Changes in v2:
> > - Rebase the series on v5.5-rc3
> > - Remove the reserved-memory node from DT
> >
> > [0]: https://lore.kernel.org/linux-
> > riscv/CAAhSdy0CXde5s_ya=4YvmA4UQ5f5gLU-
> > Z_FaOr8LPni+s_615Q@mail.gmail.com/
> >
> > Yash Shah (2):
> >   riscv: cacheinfo: Implement cache_get_priv_group with a generic ops
> >     structure
> >   riscv: Add support to determine no. of L2 cache way enabled
> >
> >  arch/riscv/include/asm/cacheinfo.h   | 15 ++++++++++++++
> >  arch/riscv/kernel/cacheinfo.c        | 17 ++++++++++++++++
> >  drivers/soc/sifive/sifive_l2_cache.c | 38
> > ++++++++++++++++++++++++++++++++++++
> >  3 files changed, 70 insertions(+)
> >  create mode 100644 arch/riscv/include/asm/cacheinfo.h
> >
> > --
> > 2.7.4
>
>

