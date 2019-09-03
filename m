Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECED3A72BE
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 20:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=Ltd4f+L7nOtZIZxUX1eM5qwDq8eaOiffLNKupTFcXt8=; b=GbYQJUKAtWVId0l6mU/hZYpFG
	UnKFW7BFLs6iEVMrmTXpMe2HeTvWdIapr2PfhUStyjewrvTscGaVarqManWxbJ4tpfJiEpqYGRO0W
	fGVCwcH0eifvRsEpeMBVYJhDQHZHh/tCRqoKvG4Hq6CBvWts4u2CoS4thUf0OVpqKbIAFttbL2zze
	4vZYCoQxu/19Jrlk8dC9pKt4snaXOXSPYCO5Fv6/N1s5pX70ZTKPz+ITl2RDC2ElEuwuEjNGRHv9e
	AVgHw6z268Tl+Lav59N5Tqjvd+UUPWIzApUf0LWIcDAuk874CHKX98vBcTP5a+iCfakwyvG9yl8eb
	WaF448L5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DrN-0003tj-2b; Tue, 03 Sep 2019 18:48:57 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5DrK-0003tP-01
 for linux-riscv@lists.infradead.org; Tue, 03 Sep 2019 18:48:55 +0000
Received: by mail-pl1-f194.google.com with SMTP id 4so8259730pld.10
 for <linux-riscv@lists.infradead.org>; Tue, 03 Sep 2019 11:48:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=pVDfotd4+mwULNcYBfwZPb3QNstzNQ7Yt+TJQtciNHA=;
 b=bbhEjUaB4J5d1efL0HHEkhuCrbShDidkf97yfZanfp6seiHwEd8WmaqfJWTX1EqMl3
 Aus0RbGbOzEmYiVQ1JUZi5Hk4jYyWKBT3h1q5tMHWzP4T8BE4NeKQVbp1xa85c8N6GJB
 Zj7VECeE2yOYC++fx7bs04EYz8tOn+atm5SUV03Eg0raA2B8YjhXOJwEW8RiYl+evdEL
 TmkpfXya3XsCnL8vxegeR5FA27uMEOBYCohISLUACNFDOpN0/B1rgH7Ll59MDoq3kitm
 iIhCEGGKwOk51oRheUHDSlfcTGmLU45ex8c344jAQxd8hHsHCw/l+n2HNHC0bPRGkvxP
 CEew==
X-Gm-Message-State: APjAAAXCYK+uGn7Z94RtfKCvsWl+uKc/6P4E8FONPYzfOwi2Jgx8QLyk
 c5pIRHyssmNIx8A+OuKl1Vtnsg==
X-Google-Smtp-Source: APXvYqwtoRP54sGdEy4OpTdOgUHkbVNMvMEjJcBT5t9TYgg5UIoQdGr9aaZjO0QECWhIJF3SEFni1A==
X-Received: by 2002:a17:902:b604:: with SMTP id
 b4mr4432102pls.94.1567536533041; 
 Tue, 03 Sep 2019 11:48:53 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id r187sm11696625pfc.105.2019.09.03.11.48.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 11:48:52 -0700 (PDT)
Date: Tue, 03 Sep 2019 11:48:52 -0700 (PDT)
X-Google-Original-Date: Tue, 03 Sep 2019 11:48:19 PDT (-0700)
Subject: Re: [PATCH 08/15] riscv: provide native clint access for M-mode
In-Reply-To: <20190828061146.GA21670@lst.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-e03fb9a6-73ee-437e-aee1-e30427f5d644@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_114854_035079_F6AA5155 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Damien Le Moal <Damien.LeMoal@wdc.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 23:11:46 PDT (-0700), Christoph Hellwig wrote:
> On Tue, Aug 27, 2019 at 04:37:16PM -0700, Palmer Dabbelt wrote:
>> clint0 would be version 0 of the clint, with is the core-local interrupt
>> controller in rocket chip.  It should be "sifive,clint-1.0.0", not
>> "riscv,clint0", as it's a SiFive widget.  Unfortunately there are a lot of
>> legacy device trees floating around, but I'm only considering what's been
>> upstream to be actually part of the spec.
>>
>> In this case the code should match on a "sifive,clint-1.0.0", and the
>> device trees should be fixed up to match.  We match on "riscv,plic0" for
>> legacy systems, and I guess it makes sense to do something similar here.
>
> IFF we decided to change it I'd rather separate DT noes for the ipi
> bank vs timecmp register vs timeval to support variable layouts.  The
> downside is that we can't just boot on unmodified upstream qemu, which
> has used the "riscv,clint0" for years.

Like I alluded to above, matching on "riscv,clint0" seems reasonable to me as 
it's a defacto standard -- we'll just have to make sure that if we ever end up 
with a RISC-V CLINT that the DT entry is something else.

As far as splitting the memory maps goes, I don't have a strong opinion but it 
seems like that'll introduce more complexity than it's worth.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
