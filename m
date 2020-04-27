Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3001B96A2
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 07:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eaADwWUTCikNJJyVj+F9FA/qmorGZCgXDKaVfOVM4JQ=; b=qZH2e3wTz58iNhOCkF2Td1LeY
	kplk5yxdakbKflM5UJlsUduDx4mcrtShZwkrBc3LbvBk9tVpb2nFIy7Ox0O9PIKNXL1yWQvyRwkdX
	huX9ceiCmnssrZ9Oul3Mby2SlIHyhAQaKEJYZXcMYSEMfwzdaQloCIDaLwKclt2slBWpwmtR9vvN0
	WHVkLzixZ/SuMtf+A18ddDpY5NlcXlCJsKjUOmk5c6rDAkdQaJTwQqfTmXrYTFIXpN+6rBy5G3h0a
	OpFDyCAJ/TcdQAEWSw8gLV1BglGrD+zbeFlH54O7gpmqeozupTVuSBv6d1xNzNLOMKpQwZvQvcmoF
	9Z8G/Qleg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSwTp-00037L-Nq; Mon, 27 Apr 2020 05:38:57 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSwTm-00036C-PK
 for linux-riscv@lists.infradead.org; Mon, 27 Apr 2020 05:38:56 +0000
Received: by mail-qk1-x743.google.com with SMTP id 23so12056235qkf.0
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 22:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eaADwWUTCikNJJyVj+F9FA/qmorGZCgXDKaVfOVM4JQ=;
 b=BXDE1rMspJPC2qeDlCneeEyTmaC1bIoS1Si/UR34EO5oBtFC2k+FWoK3Eq7OSKQMOf
 iIq0QdaVZRxTJMjFD3YMbZ3d4c8sFbTjRM5T3IIYm+slmBW4uHbkWvPkA7AztuBMzvp1
 SG/AyiLnXbPtqzojD/+7PpFRWL1DgpH1mlkwYr0tErP9Ntt5d3ppVuSNuO2cZ4LaxJIM
 0cjasgPPLRHm0phhhe3A+Lnka7+K6M4w+xL4bArtHg8A690ZV3eAlNXcRNC2DeD2IC64
 010DO+mJ/oOp4OzIGgjkPDf6OcNDEU76pVpTqVDlfX4rTh9+SbgOkfdTUtiUQ8bM8hQx
 bmcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eaADwWUTCikNJJyVj+F9FA/qmorGZCgXDKaVfOVM4JQ=;
 b=Ku7OfyIyvMzYlardwOZ7QWZMCR0z5Cr/p0guZthaXyqJRigqRDavX1RuA9UgJtzWx2
 0GoTucUN7ht3jVRjvUYEeAowZYQW8t4fUYCc+bkp4dqh4ywAmLAidtMcp2mxd1YsAsKe
 hFlC+aP7ILO6H8Gm+8iH5A0/uIVSSDLymVSB2OMysWaVs2zLe8cRtQGTbU0kN5Dfi749
 7PoQk4ynO0ha2/c2Lnmf2aYMC9o/S3wPi0XaHsUZdvFCfKb97vTTdzHWFuGNmEmRvWNN
 jik4kNKmMUmeo+5xjgcYX/g0mWfESz6FgG/NBmKp7sMkCmM4srarHnxOiRaVa12WlScf
 14ew==
X-Gm-Message-State: AGi0PuY6epwEtRAOhMrZ/ffBdgvspCbNRUk7dWJ2haZ1rThUOqMwZEpg
 mT2DT7PhSuH6WgC/6wecd5IBcNJkgvMDroAtMOirOA==
X-Google-Smtp-Source: APiQypKQWmI8d5eOFgZC2OFWp77k5vrcsxmLg9OqT3DuxUzQ96j4wsAtNE4Qoj0U2fHBGqG2lBKRRjAKSNXIOokEGGQ=
X-Received: by 2002:a37:aacc:: with SMTP id
 t195mr20507829qke.464.1587965932212; 
 Sun, 26 Apr 2020 22:38:52 -0700 (PDT)
MIME-Version: 1.0
References: <1587630565-29325-1-git-send-email-vincent.chen@sifive.com>
 <MN2PR13MB3552594ECA10E6B2B85A8A578CD00@MN2PR13MB3552.namprd13.prod.outlook.com>
In-Reply-To: <MN2PR13MB3552594ECA10E6B2B85A8A578CD00@MN2PR13MB3552.namprd13.prod.outlook.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 27 Apr 2020 13:38:41 +0800
Message-ID: <CABvJ_xhcpvw7y-f2KXfdsdzOvqiqb3o00NsQEbvoJHZ=TZ9RGw@mail.gmail.com>
Subject: Re: [PATCH] riscv: set max_pfn to the PFN of the last page
To: Yash Shah <yash.shah@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_223854_822641_9F64BC74 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 12:23 PM Yash Shah <yash.shah@sifive.com> wrote:
>
> > -----Original Message-----
> > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of
> > Vincent Chen
> > Sent: 23 April 2020 13:59
> > To: Paul Walmsley <paul.walmsley@sifive.com>; palmer@dabbelt.com
> > Cc: Vincent Chen <vincent.chen@sifive.com>; linux-riscv@lists.infradead.org
> > Subject: [PATCH] riscv: set max_pfn to the PFN of the last page
> >
> > The current max_pfn equals to zero. In this case, I found it caused users
> > cannot get some page information through /proc such as kpagecount in v5.6
> > kernel because of new sanity checks. The following message is displayed by
> > stress-ng test suite with the command "stress-ng --verbose --physpage 1 -t 1"
> > on HiFive unleashed board.
> >
> >  # stress-ng --verbose --physpage 1 -t 1
> >  stress-ng: debug: [109] 4 processors online, 4 processors configured
> >  stress-ng: info: [109] dispatching hogs: 1 physpage
> >  stress-ng: debug: [109] cache allocate: reducing cache level from L3 (too
> > high) to L0
> >  stress-ng: debug: [109] get_cpu_cache: invalid cache_level: 0
> >  stress-ng: info: [109] cache allocate: using built-in defaults as no suitable
> > cache found
> >  stress-ng: debug: [109] cache allocate: default cache size: 2048K
> >  stress-ng: debug: [109] starting stressors
> >  stress-ng: debug: [109] 1 stressor spawned
> >  stress-ng: debug: [110] stress-ng-physpage: started [110] (instance 0)
> >  stress-ng: error: [110] stress-ng-physpage: cannot read page count for
> > address 0x3fd34de000 in /proc/kpagecount, errno=0 (Success)
> >  stress-ng: error: [110] stress-ng-physpage: cannot read page count for
> > address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)  ...
> >  stress-ng: error: [110] stress-ng-physpage: cannot read page count for
> > address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)
> >  stress-ng: debug: [110] stress-ng-physpage: exited [110] (instance 0)
> >  stress-ng: debug: [109] process [110] terminated
> >  stress-ng: info: [109] successful run completed in 1.00s  #
> >
> > After applying this patch, the kernel can pass the test.
> >
> >  # stress-ng --verbose --physpage 1 -t 1
> >  stress-ng: debug: [104] 4 processors online, 4 processors configured stress-
> > ng: info: [104] dispatching hogs: 1 physpage
> >  stress-ng: info: [104] cache allocate: using defaults, can't determine cache
> > details from sysfs
> >  stress-ng: debug: [104] cache allocate: default cache size: 2048K
> >  stress-ng: debug: [104] starting stressors
> >  stress-ng: debug: [104] 1 stressor spawned
> >  stress-ng: debug: [105] stress-ng-physpage: started [105] (instance 0) stress-
> > ng: debug: [105] stress-ng-physpage: exited [105] (instance 0) stress-ng:
> > debug: [104] process [105] terminated
> >  stress-ng: info: [104] successful run completed in 1.01s  #
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
>
> The patch looks good to me. I have also verified it on HiFive Unleashed with Linux v5.7-rc2, it's working fine.
>
> Tested-by: Yash Shah <yash.shah@sifive.com>
> Reviewed-by: Yash Shah <yash.shah@sifive.com>
>
> - Yash
>

Thank you for reviewing and testing.

