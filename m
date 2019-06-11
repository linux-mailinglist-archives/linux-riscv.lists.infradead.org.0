Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D563CC66
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 15:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bth1w+VWL8KeevIn/p++wKM/x13YxzQz2M4ELt6TCCs=; b=WYSsYsyQr1VTXy79VwNqGH/u/
	g6i1LIa7l17yc9mugEngTgMCjDLIb2naDSf1w3OhKvW7NFUq+YKBP/AqPeFjiV5Jond6ZoIQE9Lrc
	hCq+8bN7+ge6yDs6oK6BvrGQs6jvLmi1y6CtvNOIHu02lNcdiK74VxWfN+5OvqSlLP07nsw020UZr
	vMVhJ184gN7UMAfGGBu1Xz+1O9SRg29cRufiAqFr1WEyovPYEihSxKX4Aez1kwNLYmuYIkbrmCvN7
	5Isz5esQ3gH3E8FyeNGxr4pFu9AN+bfhsUCvNpCJ6iNE3FqQbFu7JTR2/bBfXRxH0Qq+PjEXonbhD
	vFAEHYTEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagQ8-0007wP-2K; Tue, 11 Jun 2019 13:02:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hagQ4-0007vj-Ff; Tue, 11 Jun 2019 13:02:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id 83so6940772pgg.8;
 Tue, 11 Jun 2019 06:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RYF8jmWoohaknAxpNSmkAVScav4AJcUimkVoJQxY0o4=;
 b=oPZoz7UpspmDSRDP60yFZFTmgXjX4FyOYwKa4q4wZ/w/lcxofJ1bYofPYAVnjMjzNh
 T1xSeHPQy/NF+HMNDHLcJPkcfMkJfU/RcaklDAK3s35nWtAcVv7JDueu9P85a7aCBC9k
 F3CR+tVrxGah0e7BcVAvYWM3XpxAbCrN4VuuVy7F67t47vLln8oJGRYE4p+j3WEXt/2R
 OOVG5FbU6/2xbMmHufaBHnyBRQjhPukeuPpsEfZQHAlkRQI1k5tcOHGAW39ClmkE1eHg
 bEdWHKDHWxNhu/b1WlJg4lO9w4GuFwNLl6L5onMIq0QEamzcETftvpTFD4FXEgeUXlMO
 0XzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RYF8jmWoohaknAxpNSmkAVScav4AJcUimkVoJQxY0o4=;
 b=XzEfZnjyQ+F4jEgXHXv+A3HswtNo5slBO0/JEkzZnRf5d+dwkQMi+qrZ6b528Xsb1I
 JMSKVwMV2JEOTcVnM/d06M8HasSimn0dJ6OFgvbJnPgCyAlTnRPuKoSwYLO3IurI6lyj
 RU0k4jj2g1i1suyL/n5LtCB/wkJ7cz45GbSSben74XaIEu/wphJqUR/65dQifunjTdSg
 AEas+UH92oT4xcqtK/i6DG7AAeuZNYOh7ulbGqPPcqk09XuU4imVw81MuuiELHw7r8+Y
 D5EnYP/vnJYWM+HPJiwBZfpL1072qTVOhwTpAvqmSre/gAlVWnz3SN4q6ap4YRPgs5M9
 6DZw==
X-Gm-Message-State: APjAAAUIYXyXaQ1J+Mhd2NPo/FnjMi4ydCwCSNV6CHJ3MijkaCThKNtI
 Upjhxgw234o9jfAHHpK1wBiuV0CNq/A=
X-Google-Smtp-Source: APXvYqwOb0S95cl/7KsX0ESLaeUeaojcPDGOqXQQ0d6Vdvy+oGGi8WCHtt08DYRkCgQryg1VfwQ9MA==
X-Received: by 2002:a63:c44f:: with SMTP id m15mr4501065pgg.34.1560258151007; 
 Tue, 11 Jun 2019 06:02:31 -0700 (PDT)
Received: from [10.44.0.192] ([103.48.210.53])
 by smtp.gmail.com with ESMTPSA id g15sm27612945pfm.119.2019.06.11.06.02.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 06:02:30 -0700 (PDT)
From: Greg Ungerer <gregungerer00@gmail.com>
X-Google-Original-From: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: binfmt_flat cleanups and RISC-V support
To: Christoph Hellwig <hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
 <6e5fb7db-1d6f-7d49-553c-edc18f14f641@linux-m68k.org>
 <20190611073802.GB21522@lst.de>
Message-ID: <87039cee-925b-3f50-f29f-94e55ef6e985@linux-m68k.org>
Date: Tue, 11 Jun 2019 23:02:24 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190611073802.GB21522@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_060232_547774_C8D388B0 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gregungerer00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gregungerer00[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 11/6/19 5:38 pm, Christoph Hellwig wrote:
> On Tue, Jun 11, 2019 at 04:51:02PM +1000, Greg Ungerer wrote:
>> Hi Christoph,
>>
>> On 11/6/19 7:20 am, Christoph Hellwig wrote:
>>> below is a larger stash of cleanups for the binfmt_misc code,
>>> preparing for the last patch that now trivially adds RISC-V
>>> support, which will be used for the RISC-V nommu series I am
>>> about to post.
>>
>> Whole series looks pretty good. Just the one comment I made.
>>
>> I normally take these through the m68knommu git tree,
>> if you have no problem with that I'll push it in there.
>> It will hit linux-next from there.
> 
> Yes, that's fine.  We'll need it to bring up riscv nommu support,
> but there is no actual dependency on the patches for it to compile,
> just for it to actually be useful.
> 
> Btw, it seems like the uclinux-dev list is dead, is there a replacement
> for it?

No, unfortunately no replacement. Generally I think anything that comes
up goes to the architecture list that issues come up on. Probably not
ideal, especially for things like this that are across all arches.

Regards
Greg


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
