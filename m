Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25EB25778
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 20:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tFefLTG9h3wDhiEdkmdwXqaHvzTLliyQ7L3LTgMMtS4=; b=oPl44VXQCdZc2Ba9Cn3qtoavs
	PdMpHonyfhaavwEmFz8aww1PWT2zISgjogvrCZTB2QxY8w5dx1EQGN1ya0K3/7APbN1WNvxTU3xOQ
	ckeTs4Kg5CZNZ8uCWuX68Owo0B9qN3T+VRV3IcOEVc9vY7WPIUsTWd9QWPrhw2942xITvJKwtB/Qa
	O6qJPRbrfbxmmoQ+scRCFIUgZNGx7NP2fAk0BcJ80sGahgeak3yKL40Mt+Vfn505uGRl+LEIfYhfK
	+0jwLe0n+5BoSKSqWTr/nPdlQegsCLt6mSEO6tMCyNZv3AiLjgXNFf7gq5Bfbny7sPhsYEDGDILe3
	Rf/6Jh6vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9N7-0007t5-72; Tue, 21 May 2019 18:20:21 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9N3-0007sO-NG
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 18:20:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558462817; x=1589998817;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=e8J7kGnPJxE8GZKSVISQmKYFthnY/nOJYYPdp1bdswU=;
 b=TKHefPoF2g0mr7itxQWaOoePY0iV30F+hm2wnAixG7wLwrJcG512d9RJ
 EBTTKm1QVotlHrYyfgtI7HiS99wLB21LbGmVzmo6qA2AVb2bSL0LDVTA0
 Ev4A/7zm+/97GU256HFaW45blfyBnWRWlZHPa+Xm05hZ0WQzQJc+aqjdz
 gW2iz9WRVsfZzCbrQAcRDuzsOpuH79d+XNwa3FlJfLePiElYCXbHaZVki
 U4Jk7XSE7MpZqYUloZ3j8RwQzzImuAik3qde+qtSVbz6B5wE9ZsQZmSQM
 Ko0S2NA5tqrV5Q9bQLHcrozAyVg5gssouPrv4y0guBpN1/yIfwpHYXL2B Q==;
X-IronPort-AV: E=Sophos;i="5.60,496,1549900800"; d="scan'208";a="113719632"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 May 2019 02:20:17 +0800
IronPort-SDR: MMOPOTBL2gtGxW4UXrQD3dTUT4ByQRm9JqRacZc2wfFcDQEhagx7qGZ/+PPQWd7Ha55cr4RNRP
 FsUw78YG484u5/1QAzPKoBHXhkaVazuYzKvSRAtP9/1QZxEQGrgpAnIgEJYzPKdpNuqTf38H9J
 T9i5Y9pwIY9NDpMSejFAV5WSO6Zb1vJU3rBXubf6vz/LVBBIYJeTKWPvtT4oj+vxHEGr5RalIT
 yQ7gA0Xya0H1951SGn5uN/3QbSagWpp9ZeDJ7ayoCBL/5PDECN5PSwPcG58cq4iu7P/NVDWEsd
 1GIN373YZ4MsjXyqwthwiYrZ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 21 May 2019 10:58:02 -0700
IronPort-SDR: rZ6ZNWcy/IGr2gbmTjWYX7Es1i3+UcIlyuqMdhoOBxQT1RJo/t7mL2WhDM7oZoUHkqZYcoCz73
 sMVnLhSrJiQqPZPEJqS6q2KqpOer3JqwcvRSZA3j64423Exml/N+xN79cCgY8KEjM/aqjx7i3p
 mPRXtyhQGJNjZTrjV/EbQST96TVFMFgcgul2Flh3VIHQhtx6LPjpYs6yc3ClcYvtbAJbfsNyu8
 nzekoVKOU6zp3XnFngzsdG0j2tyIL2SuPsb0NXa/h+B77rZNtPn73aMxp1xBozQwsSvH4BkxnJ
 R/A=
Received: from usa003163.ad.shared (HELO [10.86.58.71]) ([10.86.58.71])
 by uls-op-cesaip01.wdc.com with ESMTP; 21 May 2019 11:20:16 -0700
Subject: Re: 5.2-rc1 boot on Unleashed
To: Kevin Hilman <khilman@baylibre.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <7hlfyz7l83.fsf@baylibre.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <e95822f4-3243-5a6e-0b04-1f698a59c1e2@wdc.com>
Date: Tue, 21 May 2019 11:18:21 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7hlfyz7l83.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_112017_876138_C614709C 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/21/19 10:48 AM, Kevin Hilman wrote:
> Atish Patra <atish.patra@wdc.com> writes:
> 
>> Hi,
>>
>> 5.2-rc1 still requires some out-of-tree driver patches.
>>
>> Here is my tree (successfully tested on Unleashed.)
>> https://github.com/atishp04/linux/tree/5.2-rc1_unleashed
>>
>> Issues:
>>
>> 1. Thanks to Paul, uart & clock drivers are merged. However,
>> 	a. upstream clock drivers require DT changes
>> 	b. Those DT changes are still being reviewed.
>> 	c. FSBL need to be rebuild & updated for these DT changes.
> 
> I would also add that due to DT changes required:
> 
>    d. Does not work with upstream u-boot
> 

Yeah. I guess PRCI clock DT changes may not be backward compatible with 
U-Boot PRCI driver. Apart from FSBL update, we also need to patch U-Boot 
PRCI clock driver now.

> which is a blocker for fully-automated testing in kernelCI (unless
> someone wants to work on the kernelCI support for BBL+FSBL. ;)
> 
> Kevin
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
