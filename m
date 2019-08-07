Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AED85248
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 19:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=/TxFFaJvLMuKbISqZhkIJ/esjxb1JFYw4JXyNzeU3No=; b=hk8XLw0pnqu6gNisUwxJAnfQ3
	A3CzHZLhSd7eWbOkBmGqDvB40nx+/+8BNaDkRYhB97RkS7/qL8oMm0EYLh2de0gIGmyM7Pi+Rr+dE
	+R7sGAcl66tbd1m/0RZA3j+4IFfkbqXEcL//3YLpJoBpLPem0REAU26g6hs0QqSDMK9wbsGlXbpLh
	gxPl/UucPLD0CEdHPD0z64BDtSBaLVZS511M+7L/CYaBwE0C7SCCJiab7vSZF1UE9NKdBTHeFHyhS
	YzHtdJxUrXtALA8B9w1z2nFb3Br6XjpEaZnA9rqBPDyCuQt8oRhe33MrAT4DKQ7GO/sEKn8XBBULz
	gXGmEDvYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPxL-0004M6-2a; Wed, 07 Aug 2019 17:42:35 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPxI-0004Ld-BA
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 17:42:33 +0000
Received: by mail-pl1-f193.google.com with SMTP id m9so41713972pls.8
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 10:42:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=/uiebD3btGZbv4vhWYrLmVJnJacov4IOPhmk60kkajg=;
 b=LEUsoC1udUcDxihRG4za4UxWf9aB/YhyS3CwhtIFlRJNu44Jsx7LJWRhHERbW/1XyC
 weaHM+VkLIfQ2o8hUQ0ofzyU77+r16T5vQVmHWoOlc7iKcs65AHQPzS15mLIHMwDwl3G
 otJvOFJ5lgtS1r5uzY3QDBuaVJI/tVFLZ+N1XIXEQI9IoiL7R17um/oXSiZXnQIi+WMP
 canVC96/MXv+9W7QJno8B8q2l2IxQ+OgweFhunDU3Hjf0h1DWW7CYlhT93cYRWFrhwxc
 QxQA5Igjl0NXni8X/0Pn0Q9Y955cOj7X+SO2KeY5iLiUwQA2Wa9IgrkN6OjxF6Zotj2S
 r2gQ==
X-Gm-Message-State: APjAAAXNSu8qzOG+TqLq4/oUvq9legxOBojung8FcLhZeTh32mbIzsSF
 dKRBrbWZRmPoQFvQeJyKR2tkPw==
X-Google-Smtp-Source: APXvYqw1JEMLevhf1LxZ3JskWiL2HpnAPmkA0NRBmwn1FJZT+5YEh83ZyPicXC8jCeVqb1RmwoO2Tw==
X-Received: by 2002:a17:90a:2190:: with SMTP id
 q16mr989287pjc.23.1565199750802; 
 Wed, 07 Aug 2019 10:42:30 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id p187sm146508645pfg.89.2019.08.07.10.42.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 10:42:30 -0700 (PDT)
Date: Wed, 07 Aug 2019 10:42:30 -0700 (PDT)
X-Google-Original-Date: Wed, 07 Aug 2019 10:42:28 PDT (-0700)
Subject: Re: [PATCH v3 3/5] RISC-V: Fix unsupported isa string info.
In-Reply-To: <a2795337bd86ff22ae9618d7ccae22e7482be332.camel@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-5befbd83-7239-4ee0-8c03-06e377e53f72@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_104232_379990_36DC5573 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 tiny.windzz@gmail.com, Greg KH <gregkh@linuxfoundation.org>,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, johan@kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, robh+dt@kernel.org, gary@garyguo.net,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de, info@metux.net,
 linux-riscv@lists.infradead.org, allison@lohutok.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 07 Aug 2019 10:31:51 PDT (-0700), Atish Patra wrote:
> On Tue, 2019-08-06 at 18:26 -0700, Paul Walmsley wrote:
>> On Wed, 7 Aug 2019, Atish Patra wrote:
>> 
>> > On Tue, 2019-08-06 at 16:27 -0700, Paul Walmsley wrote:
>> > 
>> > > Seems like the "su" should be dropped from mandatory_ext.  What
>> > > do you 
>> > > think?
>> > > 
>> > 
>> > Yup. As DT binding only mention imafdc, mandatory extensions should
>> > contain only that and just consider "su" extensions are considered
>> > as
>> > implicit as we are running Linux. 
>> 
>> Discussing this with Andrew and Palmer, it looks like "su" is
>> currently 
>> non-compliant.  Section 22.6 of the user-level specification states
>> that 
>> the "s" character indicates that a longer standard supervisor
>> extension 
>> name will follow.  So far I don't think any of these have been
>> defined.
>> 
>> > Do you think QEMU DT should be updated to reflect that ?
>> 
>> Yes.
>> 
>> > > There's no Kconfig option by this name, and we're requiring
>> > > compressed 
>> > 
>> > Sorry. This was a typo. It should have been CONFIG_RISCV_ISA_C.
>> > 
>> > > instruction support as part of the RISC-V Linux baseline.  Could
>> > > you 
>> > > share the rationale behind this?
>> > 
>> > I think I added this check at the config file. Looking at the
>> > Kconfig,
>> > RISCV_ISA_C is always enabled. So we can drop this.
>> 
>> OK great.  Do you want to resend an updated patch, or would you like
>> me to 
>> fix it up here?
>> 
> 
> I am sending the patch right now. We can remove the 'S' mode check as
> palmer have already sent the QEMU patch as well, .

Looks like I missed the boat for 4.1, though.

> 
> Regards,
> Atish
>> I'll also send a patch to drop CONFIG_RISCV_ISA_C.
>> 
>> 
>> - Paul
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
