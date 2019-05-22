Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B795225EB3
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 09:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5iXb/MWMlbwhsEQoL71M2tozDnsDc+tFDe8ifniEhU=; b=gq3rcGAkg4DdPU
	R6cYmxDJqgdc5pDeohNX4CMQrk/Y6qQRk83CflNECV7OrQNuoipt5FD6lYOsY5jpzI+OJ32fPfpni
	Nmpah/DyZYxS1awiL/WAwIkf9GqYzvS3sdDjBEKqpFLwRsfViA9sG7FCNvjgaeTla4knB8VPVNuNT
	GAeDhHa2RWu6R+nOEgEUA+IdwjUTnEruTGH9DLA+Ce4nOFJ8QWiDYTuTicOvTr/4ZD5pJmm1Hmklf
	BYVWbZKG0VZ0d/2Ph9wufJ+SMnh5dI6exCuWy8M76xj/hZ0JprwoAmEyBVkaQrpaWFp+umEIPFcG8
	yk44kyVEVIVWl6mMyu3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLjC-0001rx-LH; Wed, 22 May 2019 07:31:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLj9-0001rD-1X
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 07:31:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 03498AFDF;
 Wed, 22 May 2019 07:31:51 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: 5.2-rc1 boot on Unleashed
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <mvmtvdoi1re.fsf@suse.de>
 <636f53d9-1800-df14-896d-c95737203b2d@wdc.com>
X-Yow: Psychoanalysis??  I thought this was a nude rap session!!!
Date: Wed, 22 May 2019 09:31:51 +0200
In-Reply-To: <636f53d9-1800-df14-896d-c95737203b2d@wdc.com> (Atish Patra's
 message of "Tue, 21 May 2019 11:14:00 -0700")
Message-ID: <mvm5zq3hrmg.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_003155_234809_BC37334A 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 21 2019, Atish Patra <atish.patra@wdc.com> wrote:

> On 5/21/19 2:40 AM, Andreas Schwab wrote:
>> On Mai 20 2019, Atish Patra <atish.patra@wdc.com> wrote:
>>
>>> 1. Thanks to Paul, uart & clock drivers are merged. However,
>>> 	a. upstream clock drivers require DT changes
>>
>> How does it look like?
>>
>> Andreas.
>>
>
>
> Here is prci dt entry in Paul's patch series.
>
> 		prci: clock-controller at 10000000 {
> 			compatible = "sifive,fu540-c000-prci";
> 			reg = <0x0 0x10000000 0x0 0x1000>;
> 			clocks = <&hfclk>, <&rtcclk>;
> 			#clock-cells = <1>;
> 		};

But how about the clocks?

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
