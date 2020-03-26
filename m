Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4CB194DA4
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Mar 2020 00:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+R0PSYLAfVo8IUZ9E75KCOpIA4Q3wOsEuTW9HO0z2Xk=; b=GcOMxpTeURdbD7
	V1Ss021ejotJ2ErzwEmRK7q8h6cS8zMFhKyCZ6bNbc8SJhrASzi/y1jVH/IQpKF4+ImV62soy843R
	7aL78Hp099JZPgsVNHy0MvIWH4VLN0HJNXE7HRghJTlwpxzqc1UjPDtYVlKRbNFJb9bZPf7iZd0q1
	0VfY6YlYNIuvEpMpe7oGeJqL2Dz1xm+C5gJ+oPG99f3K/tyrPLfIsu3tsnXeCh+Moldy8ouxdSDkt
	qu73IlpHwpqZpZaalMONIq1IdoFJn5V6t5Sape5oUuymNJxhKGt2JnvBfm4dYQTMEGS88NWeNtZeU
	hXuHuqeonQa9wzw4OL7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHcPO-0006CR-Ou; Thu, 26 Mar 2020 23:59:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHcPL-0006C2-4Y
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 23:59:32 +0000
Received: by mail-pg1-x543.google.com with SMTP id d17so3722096pgo.0
 for <linux-riscv@lists.infradead.org>; Thu, 26 Mar 2020 16:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=+R0PSYLAfVo8IUZ9E75KCOpIA4Q3wOsEuTW9HO0z2Xk=;
 b=YJyN8s6H1RYBxoTCnLij7/xlCorBvtubxfW7cW0rhW9LUVbHjOQHjG48tzWYa1zDsi
 J+ePECdrhB7BrwJUiZCwZszyIyQQwjgUruFSbfRTjFpECCQUJbzEwMQBqLngqWmbkO3/
 rFIQ95/olBKE+W3u6MJmbOKbF5gQvbdyOwsCOYjojKK+H6W0FBFD7WxTZAOHqmZLEa/T
 J0kuW5ZQ6MhUujUv/gxIqa2A9PCRc7LG0n9q1SLh0I93RgoMCoQAP1Qrwzx/tmQkxkPg
 Ouqa8aBssaDI264BHbRFiV+lZrvWzsIk41TDa4iRQ1b5uu2p5nJX8Aprb0f8BwHijJhG
 9+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=+R0PSYLAfVo8IUZ9E75KCOpIA4Q3wOsEuTW9HO0z2Xk=;
 b=AJbWJ7mtsvXDvxTHxfdvuKkTgm7WGl3H1c5HrG2yxmy08x/aMdW6+5BHpSCrrXzUGB
 43dHxZN++hnYFMMerSLcQhHBm9QLpK8PdToick4m5ShXBd6YdUY8G00tlLz7RRe9kO5X
 eaf5i4ikEjKHQBnhv6+xebmVi2pgq1QG+QIyFeO+56VZi52i37ZMSKR8jIPO6nGqa3XZ
 Q5vVH+v/X8+cj5QLUkXOaV4zB542G7h0ZBNQkAcEYJsgYKOAizqo9C02npJAXc5oHqYL
 73UqtSwAa+xJSRv16RPmP99dYRMfqcLKPFsX0Sk6vjEu6j/ajc5sgISqdZCz9oXqdWSN
 nQ/Q==
X-Gm-Message-State: ANhLgQ13PT5JwP71pT5bFtoZ7w1+X1aRHC5X0lijwzaWO3vq11fz5nXy
 X5AUcQvp9/SgAz2Wu8P3n6gLjhjWdvM=
X-Google-Smtp-Source: ADFU+vuWVSkzfzxPoP38CMXAqr9vzxp4KsaoH+YKAsTcQMjFOBxrfP0q6GyvYe+jXvh3gSUDLK339Q==
X-Received: by 2002:a63:1e44:: with SMTP id p4mr11229620pgm.367.1585267169579; 
 Thu, 26 Mar 2020 16:59:29 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id e9sm2633707pfl.179.2020.03.26.16.59.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 16:59:29 -0700 (PDT)
Date: Thu, 26 Mar 2020 16:59:29 -0700 (PDT)
X-Google-Original-Date: Thu, 26 Mar 2020 16:59:26 PDT (-0700)
Subject: Re: Kendryte K210 support v4
In-Reply-To: <CO2PR04MB23439F82E1F360E1562DED77E7CF0@CO2PR04MB2343.namprd04.prod.outlook.com>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-9925e921-28e5-4f0d-8f93-3958d8226e11@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_165931_206018_A997652E 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 16:40:34 PDT (-0700), Damien Le Moal wrote:
> On 2020/03/27 7:09, Palmer Dabbelt wrote:
> On Mon, 23 Mar 2020 21:19:05 PDT (-0700), Damien Le Moal wrote:
>>> Palmer,
>>
>> Ping ?
>>
>> It would be great to get this series in 5.7.
> 
> Well, the real issue here is that the new series don't appear to address the
> fundamental issue I had with the patch set (kernel binaries that only run on
> one system).  As a result it's gone on the list of things I need to go fix,
> which is quite a bit longer than the review queue.
> 

I do not understand... Are you referring to the compressed instruction #ifdef
that was in the unaligned load/store handler ? The latest v4 removed that and I
actuall tested all 4 combinations of kernel and user space being compiled with
and without compressed instructions. All worked fine.

We had the same problem in OpenSBI by the way and we fixed it there too.

It's the BUILTIN_DTB issue -- this should look up the DTB to use based on some
sort of SOC unique identifier, either something unique in the device tree that
was provided (assuming whatever loads Linux on the Kendryte provides one) or
mvendorid+marchid+mimpid (probably with some sort of masking).

