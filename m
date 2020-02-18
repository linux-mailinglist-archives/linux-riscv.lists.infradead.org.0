Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640FB1634DD
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Feb 2020 22:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7XIwgQvEmz5ObK8Ov2xONPS4R3po9HKS6Y1uCMcLv5Q=; b=AeZuwI3tzkq7n7
	PfqBJ91765uXQ1UBVTpDztffcxy++GTAOusjgRENsgZlNDamgZWiDV/Gcs7zXvJZA2Svq+2U3tS0U
	kk2Du/+PPIlRNkplWYKJLoBjTqmTcwc44osRJ0r8tbW5rqrEXev5LrIVxjYRp2JN7wkstmF5gruOI
	A1ghGLZkXyvIzsp8MkQhZ5YRzQn6KTL1zhNZV/dVr76jZ+2rpHdd7kKrpHAIAH/fX5nqRYieDx++u
	2dTZ2TsWoie6M2XnT28ZtqgrFtzvoAqK2xCyH/cmzfY8XkGutL8mhKa0BPbrDWnuAcGd3JVuVf93m
	g3fcF/jUbW9N/K4RwspQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AOP-00069L-Fu; Tue, 18 Feb 2020 21:26:57 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AOK-00067T-3p
 for linux-riscv@lists.infradead.org; Tue, 18 Feb 2020 21:26:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id o18so743103pgg.13
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 13:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=7XIwgQvEmz5ObK8Ov2xONPS4R3po9HKS6Y1uCMcLv5Q=;
 b=G6Csu1i0zd3pTnF+e3eDJBNGqRWXPacSfYP/FNVr97WulOIaor1/IpG3cAgMt/3Thr
 fbvdXImUoVUiQZ7c1GIkbCYV6KskDo2y/2Tz6s+VUcLcEeVGuF1qT/FOG5KL+kIYhnW4
 qYE4lhZFDTbQT4vz2G3fOlM1zJRVkKXl7nCRofFVg29SYyVEwAwOPIVq+uQjohxgVFE2
 TXfn7+DSGWCXSjAwphzqSnvovG+i1VmJxJAFkTnEp4iIHH26ItbVzqVGYemGI7bY+msz
 h0Ymo16OaTzpFOwh6PMVgDZJG7hUg/9Gd584tLmLSw4jIcOwyDZsupvmnXy9GEKu57/o
 /tEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=7XIwgQvEmz5ObK8Ov2xONPS4R3po9HKS6Y1uCMcLv5Q=;
 b=DEhKpX5RbTunZQPjEUrnQwXMsF5BK9tQD9x/NJOIgxYq/touDGdtW7xf+lOsSAyiDx
 h1t49Wkv4KsBISRSCotbSo80X+3YmgctOd7+ZQB5Fe+//BCMZa/nFVIt2O4aSIfm3ZVZ
 QRq+7CscDamsKj8yDXycE4y9O5NPLGiiiUPcN5GihdnrNUowkXyuLddy2TtI0yLHf9de
 BsXhGHzXU7r82vy70nU43d+2NNgxmZcXi7LWqoNJRLaydQXqqBMZE0lDSNg48BoshZEA
 D67zygGzxJmdm3lct5mKM2QJpHRydZ3pwbD3L2XbYi3B0rH6JXbOkjtOja05vuGqoeVG
 b2ag==
X-Gm-Message-State: APjAAAVua6dcrDWHF9xuraP1X4csGB/kBajZOaiyfX6YuI853uyRsvSL
 LeaCVvr6TKOzGt1whtv8dY6Vhg==
X-Google-Smtp-Source: APXvYqwmhKGAZkOymrSuntbwSCYU4fly3Kgu8XWL/QVp/UPttbbdiC18CMu7X3uC43Efr1mU9qVXBQ==
X-Received: by 2002:a63:85c8:: with SMTP id
 u191mr24159747pgd.217.1582061211236; 
 Tue, 18 Feb 2020 13:26:51 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id q15sm5707345pgm.47.2020.02.18.13.26.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:26:50 -0800 (PST)
Date: Tue, 18 Feb 2020 13:26:50 -0800 (PST)
X-Google-Original-Date: Tue, 18 Feb 2020 13:26:47 PST (-0800)
Subject: Re: [PATCH] riscv: force hart_lottery to put in .sdata section
In-Reply-To: <CANXhq0pbm0pgsOLdFSJvTjpd8e7-6-pCRSvFM-+H6oY3aYeiPg@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-402cee57-2e8b-4f71-8daa-6bfa75f5080b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_132652_151895_052B2BD7 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: anup@brainfault.org, linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 05 Feb 2020 03:07:52 PST (-0800), zong.li@sifive.com wrote:
> On Tue, Feb 4, 2020 at 7:40 PM Anup Patel <anup@brainfault.org> wrote:
>>
>> On Tue, Feb 4, 2020 at 4:49 PM Zong Li <zong.li@sifive.com> wrote:
>> >
>> > In PIC code model, the zero initialized data always be put in .bss
>> > section, so when building kernel as PIE, the hart_lottery won't present
>> > in small data section, and it causes more than one harts to get the
>> > lottery, because the main hart clears the content of .bss section
>> > immediately after it getting the lottery.
>> >
>> > Signed-off-by: Zong Li <zong.li@sifive.com>
>> > ---
>> >  arch/riscv/kernel/setup.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
>> > index 22b671dbbcf1..45c63dc06360 100644
>> > --- a/arch/riscv/kernel/setup.c
>> > +++ b/arch/riscv/kernel/setup.c
>> > @@ -40,7 +40,7 @@ struct screen_info screen_info = {
>> >  #endif
>> >
>> >  /* The lucky hart to first increment this variable will boot the other cores */
>> > -atomic_t hart_lottery;
>> > +atomic_t hart_lottery __section(.sdata);
>> >  unsigned long boot_cpu_hartid;
>> >
>> >  void __init parse_dtb(void)
>> > --
>> > 2.25.0
>> >
>> >
>>
>> Looks good to me. Please ensure that it is tested with both
>> RV32 and RV64.
>>
>
> I had tested it on RV32 and RV64, it works on both.

Can you be more specific about your setup?  Before you patch, hart_lottery
should be in .sbss, which we put inside .sdata.  I'm a bit worried there's some
other issue going on here that this is just masking.  That said, putting sbss
in sdata seems like a generally bad idea so I'd be in favor of getting rid of
it.

I've queued this up onto for-next, as even if it is fixing a bug related to the
relocatable kernels we don't have support for that yet.  I've also sent a patch
that stops putting .sbss into .sdata.

Thanks!

>> Reviewed-by: Anup Patel <anup@brainfault.org>
>>
>> Regards,
>> Anup

