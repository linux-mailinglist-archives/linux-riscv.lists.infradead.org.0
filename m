Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F88E070F
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 17:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=91jN9hLz44E0SIllcR3+W3/8+Kxo4Xau3UgLzglMjUg=; b=W+86XPyBWkByWl9pq3sEy4dLj
	9/jG7TwuLxReSDX8SwbcOAbAOFs5vNs7ggt5syI9Jgq8rttcoRUUxUzSRvuKJaJsAY76IzGKcce+Q
	BkaqT7ECwc36FZSkAyPM5kMGJShXOtk9ylUUbt4060cOHH13zbU65dksQeHe72WDUuScbu40HOsmu
	BXK0ol+1RvVNleLALp1xU0WROPGhnoe0IODFONbO9M9s0pTkKhket00SddKVCm2ZCoxJfDEcCWLRE
	9+6snpo88XLcfbw9Voch1wu8tS6r0NmAcsVpwz5V+2ZhCOkx9gQqQ1cgcY+wk4JFWxrm3odySfRrK
	zvwPzDItQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMvnT-0006LU-CP; Tue, 22 Oct 2019 15:10:07 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMvnP-0005ji-M5
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 15:10:05 +0000
Received: by mail-pf1-f193.google.com with SMTP id q12so10827266pff.9
 for <linux-riscv@lists.infradead.org>; Tue, 22 Oct 2019 08:10:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=VpPZchWxBalhXenlomTdpWCrOTqc954uAKLWrxBCzwg=;
 b=igyvW7jvtqUf9FJEcOtlUYyyHy00HgnYmQxTGWwzQAvUu3zy5YnFv6eVDzt3xcRrcn
 OBgI5m3ePrG/Aaq5y5oyax0Fgg/uKKdubrUciqF0A+IoJIgiGmaRucX0hXEFyzDa9It9
 zgGh2RWbwjpcKQm1aaWhRn9o0XZbHhRHO8rDQSJ7lK80UH/DrJ2W0Mr7WD41UI6xck1W
 t8cJ7+CYnIvw8fk7jMSgwGQ/nsnjgmrrfrO5qTYm3Inc1NlUs3HdstAYKNjTekRoVXdT
 PmbY4xUTre9hPEf7W7C23ig10TLN1nR++6MJBwJGlm5iV0cJ4TNzvBqI5YtoBzhLSQt6
 ingQ==
X-Gm-Message-State: APjAAAUHugfrYGBR0our+xSQFf+TZ0z9bzV3qbKquxQJ8KM2RzT6E2bv
 R/GDoEovxLYjZanl7gqwDP6IlQ==
X-Google-Smtp-Source: APXvYqy/RH57lz78tmo+obFfGFFGPfZHogTmReh9YUV/QtsrPLBStlqA39MPr3GYs1lhDAYM+t/DZA==
X-Received: by 2002:a17:90a:a889:: with SMTP id
 h9mr5345232pjq.61.1571757000702; 
 Tue, 22 Oct 2019 08:10:00 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id m102sm16867880pje.5.2019.10.22.08.09.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 08:09:59 -0700 (PDT)
Date: Tue, 22 Oct 2019 08:09:59 -0700 (PDT)
X-Google-Original-Date: Tue, 22 Oct 2019 08:07:08 PDT (-0700)
Subject: Re: [PATCH 4/8] riscv: ensure RISC-V C model definitions are passed
 to static analyzers
In-Reply-To: <alpine.DEB.2.21.9999.1910172138320.3026@viisi.sifive.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-8e06672c-a3e1-4dde-bbe9-ba1d8ab79645@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_081003_725654_5E445FFD 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 luc.vanoostenryck@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019 21:39:29 PDT (-0700), Paul Walmsley wrote:
> On Fri, 18 Oct 2019, Luc Van Oostenryck wrote:
>
>> On Thu, Oct 17, 2019 at 05:49:25PM -0700, Paul Walmsley wrote:
>> > Static analysis tools such as sparse don't set the RISC-V C model
>> > preprocessor directives such as "__riscv_cmodel_medany", set by the C
>> > compilers.  This causes the static analyzers to evaluate different
>> > preprocessor paths than C compilers would.  Fix this by defining the
>> > appropriate C model macros in the static analyzer command lines.
>> >
>> > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
>> > ---
>> >  arch/riscv/Makefile | 2 ++
>> >  1 file changed, 2 insertions(+)
>> >
>> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
>> > index f5e914210245..0247a90bd4d8 100644
>> > --- a/arch/riscv/Makefile
>> > +++ b/arch/riscv/Makefile
>> > @@ -47,9 +47,11 @@ KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
>> >
>> >  ifeq ($(CONFIG_CMODEL_MEDLOW),y)
>> >  	KBUILD_CFLAGS += -mcmodel=medlow
>> > +	CHECKFLAGS += -D__riscv_cmodel_medlow
>> >  endif
>> >  ifeq ($(CONFIG_CMODEL_MEDANY),y)
>> >  	KBUILD_CFLAGS += -mcmodel=medany
>> > +	CHECKFLAGS += -D__riscv_cmodel_medany
>>
>> I can teach sparse about this in the following days.
>
> That would be great.  Would you be willing to follow up with me via E-mail
> or mailing list post when it's fixed?  If so, then in the meantime, I'll
> just drop this patch.

It's probably worth going through all our argument-dependent builtin 
definitions at the same time.  They're generated by riscv_cpu_cpp_builtins(): 
https://github.com/gcc-mirror/gcc/blob/master/gcc/config/riscv/riscv-c.c#L35 .

>
>
> - Paul
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
