Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B2183849
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 19:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=YoRLaEnRu8/WQRDvClKv9GjNYdBf/QwBCoJ+qSwmfbA=; b=TFrJhVxcfdi73F+tibN6b4VjL
	8GcQaIvNFchhvHf1MDLBhQfnm9hyYRAElbeArZXqZljdSb2S5Bf522OJ8SH7h1iIYt8XjFljCGj6K
	F1CFUYqDjNISezOHt/YZf7PvU50NHIQc4XcxvgR6EK5RUo3BbcUO82yW6Nezwf+g8hqmFpxgw2H+0
	VJY9BGYsVuZXsLfKeOQnwhXI2p8cbxBKDAbjQ4RnFxW+EFz3yY9/2ip0jmMhTr1/HKTAEfLcJM+b/
	f3Ssvwugovw6R0rZ+18yvKWFfRwLLpHKixD4+mJri1dF64YwDv62mFQmI8kZ1B49OA3E5wWG4Robv
	nK7nTWgBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv3kF-0004TH-2r; Tue, 06 Aug 2019 17:59:35 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv3kC-0004Sf-EG
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 17:59:33 +0000
Received: by mail-pl1-f193.google.com with SMTP id b7so38221927pls.6
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 10:59:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=oQJkGARJWjx+VqOyjrfidLGa25LtkECWplg+h1Xop0w=;
 b=BUb2XOzeV9lSdZL5U6w+ubmdzavTz3VVIS2GnNrIBYbv2pPDJ/Jq88QiIQozNETGJM
 afJpsBFPwFccPGzO8MBdendiMO4DeEnWxzlYp5Hnhbs7wboVpKMz2pEa74zTdrdDyZxd
 7HH4CYwnzzZQMQIc/uy9h0E8EwbIOIfVRAKyV9xtbrec7rH8FJbMsXdnMmYV6wlUPIFn
 e0luXldQNzA8MdJJ95QCzpugojDdOk2MxHNsJ7DfzS+j+uT7Ncjr9nT2Ic/dLHMoJU6S
 b9sSppJnMULlXMiWIkX5rS4/6fqbpjPxVhrXhLfj1fTvLya2EIO40Su3dnirza8z2u0l
 dY0g==
X-Gm-Message-State: APjAAAXjOUxbkrpNWU4PkZqVurKetyT3mZiLv8qUsdKf0GOgW+3fLnck
 Ih3hj53sH8ncEhE/dvam5s9hgg==
X-Google-Smtp-Source: APXvYqxuwq+UWVp/vUXQ2jH2cOxAM/dtvJYMXCBp350xuPl7/AvtCK8bkiTk+t+EVPUHiv8WSNapdA==
X-Received: by 2002:a17:902:1102:: with SMTP id
 d2mr4319785pla.149.1565114365401; 
 Tue, 06 Aug 2019 10:59:25 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id y8sm84964072pfn.52.2019.08.06.10.59.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 10:59:24 -0700 (PDT)
Date: Tue, 06 Aug 2019 10:59:24 -0700 (PDT)
X-Google-Original-Date: Tue, 06 Aug 2019 10:59:09 PDT (-0700)
Subject: Re: About __udivdi3
In-Reply-To: <alpine.DEB.2.21.9999.1908061051570.13971@viisi.sifive.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-b8da0042-274d-4d0e-ae54-4c21459238e8@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_105932_481569_02FEFE13 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: tesheng@andestech.com, dslin1010@gmail.com, alankao@andestech.com,
 rick@andestech.com, Christoph Hellwig <hch@infradead.org>, kclin@andestech.com,
 linux-riscv@lists.infradead.org, Jim Wilson <jimw@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 06 Aug 2019 10:53:12 PDT (-0700), Paul Walmsley wrote:
> (privately)
>
> On Tue, 6 Aug 2019, Palmer Dabbelt wrote:
>
>> Yep.  I think the best bet is to just drop it, with something like this:
>>
>>    commit f7f2185e0e3e60a8b77fb519a98b752242ade235
>>    gpg: Signature made Tue 06 Aug 2019 08:06:30 AM PDT
>>    gpg:                using RSA key 00CE76D1834960DFCE886DF8EF4CA1502CCBAB41
>>    gpg:                issuer "palmer@dabbelt.com"
>>    gpg: Good signature from "Palmer Dabbelt <palmer@dabbelt.com>" [ultimate]
>>    gpg:                 aka "Palmer Dabbelt <palmer@sifive.com>" [ultimate]
>>    Author: Palmer Dabbelt <palmer@sifive.com>
>>    Date:   Tue Aug 6 08:03:59 2019 -0700
>>           RISC-V: Remove udivdi3
>>           This should never have landed in the first place: it was added as
>> part
>>        of 64-bit divide support for 32-bit systems, but the kernel doesn't
>>        allow this sort of division.  I must have forgotten to remove it.
>
> Just FYI, you probably already know this, but this patch was mangled on
> the list.  I'll reformat it and queue it up, but figured you probably
> would want to know if you didn't already.

Ya, they're mangled when I inline them.  I'm usually just asking for people to
look at the concept here, and I send a real patch out later.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
