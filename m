Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8871C4965
	for <lists+linux-riscv@lfdr.de>; Tue,  5 May 2020 00:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=RsWtuuae95Pfo1FKcbtwlDSeo9CU2YN0fL7RBypW428=; b=tAkB7Lc3ebwn0U
	vvdon3uLfsxZUpaj0VDGFplylupc9EYm3GO0np1RJrzKmQbiLOcOewcE+WFMkIsZTooTMxNU3jeMr
	PloVhsG4PJNQCKeJ8lwXQOI/Kq9i4lho1CH7sCxm0Lv33CXjh4LX6gLlHuUy5kSUEIJKsQ+xsNiBx
	sS9ggKOtp+5Weoce9MFrVLpZbLYWlPI8CoXkiYqrxJBlDuvnVaocf0qSu0osUGqK/U66LMnXowloP
	5icBIYvp/9gWMGheEcFDDYH3HZgH0e4WvVP3irax10Pqe/vgrw7teZkouIib/QrD7n/7XYR0ZFQmC
	l6dKuzDwjnsiMG5mBacw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVjHz-0000aO-Hb; Mon, 04 May 2020 22:10:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVjHv-00005g-5o
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 22:10:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id x77so6675pfc.0
 for <linux-riscv@lists.infradead.org>; Mon, 04 May 2020 15:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=RsWtuuae95Pfo1FKcbtwlDSeo9CU2YN0fL7RBypW428=;
 b=e3zXikzx6u7QRuqbHEJY7DGGU05jX7XdVzNnwCyXIoJTW97K7vY4Vh4UN74Ypos1e/
 4u2qb7RmMw2JeIx93QTvYBDH97tOGsJqATkQ6+eRPGcEmd7Sa4AI7CgPpZsRCtnnJzjQ
 3QcQigFfBnJd+3+J/IXH8RUqbawhljSSy1rl5VK8IRtmKC0nivwezbmyDFbLkty1wjpi
 Xo8WD8fjXUpL6vplIk44HWlYhSgWlAoV3TaCde6I/6gYYbRc8k2Sj+Poz8q5dLjyP2gk
 tHOd8/av0lstAqIOQ50Z7T13aEGT9pj8LpFLwn+zHwaILjswIsIdaHOfcafvx7Co1GKs
 KTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=RsWtuuae95Pfo1FKcbtwlDSeo9CU2YN0fL7RBypW428=;
 b=fkbUHj9GFjzLnb3LwOyMQDSmfFTJiBsUQyDPWmOUhTEHIcg6QQLdhlZVPb9YracAjn
 9cFSI7zn4sfSu/5nXYeOVnd0AGYbRkdjM2jFPzRU0SrCKBRrLbgGcVWTpjWClmLvMhwl
 Qij1+aDgcl9odCOvx8BhWiZKy1EkQlswSWGdyEoV/PGYpFAPkiBuyv1qZNNghKZ3fvt4
 b8GXlokcZgxmxpiXoy/bsBAv94C7oOVO/n8W5Lbhb1DsuunCWvCUfyLQtW6p9ltWySuX
 O/9PMockJQ+bpqy5nlyHzDYca96pJexISMG8hW34lDPFYFbXH5Za2QJFl6etVn47EJlN
 w4DQ==
X-Gm-Message-State: AGi0Pub6hHy6fIUqQjvPAZ66J855tZv7pEqjkqN8qZIMitOb5yAuhRoj
 HfDsWHWRXQJnXsHO2DXqfUQo+A==
X-Google-Smtp-Source: APiQypLTMw94c16mgPZMBgqGaTJsmCgPcg3wtFztESmdv/J6FTXIe0JAYR0JCBbyJ2KhmA2Woo4GZw==
X-Received: by 2002:a63:5b4e:: with SMTP id l14mr354484pgm.146.1588630209329; 
 Mon, 04 May 2020 15:10:09 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id a2sm75364pfg.106.2020.05.04.15.10.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 15:10:08 -0700 (PDT)
Date: Mon, 04 May 2020 15:10:08 -0700 (PDT)
X-Google-Original-Date: Mon, 04 May 2020 15:04:45 PDT (-0700)
Subject: Re: [PATCH v2] riscv: force __cpu_up_ variables to put in data section
In-Reply-To: <CAOnJCUKCryLuZn0Pd71z3Oa1AEN1xUfz=SW_5PBV-2pDU+Nw=g@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: atishp@atishpatra.org
Message-ID: <mhng-8854b2d0-fe7b-4af9-aa24-c10e631a8574@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_151011_245398_A0564EA6 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: anup@brainfault.org, linux-kernel@vger.kernel.org, schwab@linux-m68k.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 04 May 2020 10:37:40 PDT (-0700), atishp@atishpatra.org wrote:
> On Mon, May 4, 2020 at 12:50 AM Andreas Schwab <schwab@linux-m68k.org> wrote:
>>
>> On Mai 04 2020, Anup Patel wrote:
>>
>> > Slightly improved text:
>> >
>> > This issue happens on random booting of multiple harts, which means
>> > it will manifest for BBL and OpenSBI v0.6 (or older version). In OpenSBI
>> > v0.7 (or higher version), we have HSM extension so all the secondary harts
>> > are brought-up by Linux kernel in an orderly fashion. This means we don't
>> > this change for OpenSBI v0.7 (or higher version).
>>
>>   +need
>>
>> Andreas.
>>
>> --
>> Andreas Schwab, schwab@linux-m68k.org
>> GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
>> "And now for something completely different."
>
> With Andreas & Anup's nitpick addressed,
>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>

Thanks!  It should be on fixes, with the new commit text.

