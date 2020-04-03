Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C9819DCD7
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Apr 2020 19:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=e1Jz3mW1+kHVFV4bKHsCQgpmGnhsmI5d7p4GD2NK6Jw=; b=b2AsaE3MRghYad
	IQJziNjmfrAIxrIIFMdaffd+V+f9irAlRRnuMUOIAGNFtGI7778fnzt5SlmDdBUlX43xos7JlQSS5
	R9k8BW3QOTwURTCIklaAsXi6EtT8es8bD5lLAQt0kg2OsupOLLAqzOA6uuHoKmR5LO+YHwWe0wWwf
	p4lnWKGUnnGK4zUNbhLREIujOLY7JJDyZ/7xXSdydIdbqDKj13jAXC+B0hIRFOUul8iixzll/zTWy
	M98lJO8MbNi2/gWQ3vjZPaVLETrGso8H9LR21JEFk54Sp0zlcX3wKzm3H9+BdvVRbEMlmqWHIETN6
	HusA8zh0VS6FLbCOAyPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQE3-0006n5-IS; Fri, 03 Apr 2020 17:35:27 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQE0-0006mN-UC
 for linux-riscv@lists.infradead.org; Fri, 03 Apr 2020 17:35:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id d24so2965177pll.8
 for <linux-riscv@lists.infradead.org>; Fri, 03 Apr 2020 10:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=e1Jz3mW1+kHVFV4bKHsCQgpmGnhsmI5d7p4GD2NK6Jw=;
 b=EBPVsvsta0srvEAqWr0fr9qfSkkqs/Q2Phqf+lsxoEouUCBM7iFiGcn+D0wWwrXWmK
 sM0Ie9ZOun633qfoO6u9ev2P16CWrDdNYIK4M4XC067sskeZ4mw8MEyD6HlzOiGifD0z
 yJmSiyQrSCYYTFu8ksLLcoyM0E2SmgvG1AURzHufcfoMtWrmfWdV+Ss5WnGGPwDfB0g0
 ihbuiF3e/yYBT01jU0M2mpObapZXX/VAyL+LocCHiS4iUuffzxWE5oae3cgKYGb8a7+L
 j8f5YU8upiQ0Wyr05mO5dFCJgvYyOcb5ETelpyca02QMnwS/X5TDW768mov35o1Onzcw
 fYiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=e1Jz3mW1+kHVFV4bKHsCQgpmGnhsmI5d7p4GD2NK6Jw=;
 b=sY7TQ/z35KM5CFH6IxUOp/R/MWN2hL1G0/WvEQTncxEw5Ctzb8WUKI6cDNPRG84yrc
 mEp2/8RALLSOMANusPAPn5ioFbKXsBvImId6Q0MrM6TIoi7RGExCGe5lhfzDcxqQINPF
 mVJoWnHTxn0TJhVC+Ypv+qGUgHRATr/HPGTWYkYPguzStihx28td8a7Kph1Lcg7pY8Z8
 he0w/yVNCNlgvpFQidWLEHWIqfXoyEU8RfYiM2lOj+TXdG/3q1Z/dq5MPDzqmZL717Rf
 FfiZtabj1QYiVeLI9NTbl9if5M3iQQKY88RpLXXFBaipxRzpbwfUQbfe+68fi/rP/FX/
 7znQ==
X-Gm-Message-State: AGi0PuablIVV7oHfY7Xnwy7OVTNJw5x5CY0cB6ilXfq3762fXzweXh3r
 ttQiaq5WPCo1nrFn/JR34EQd6QI2wjs=
X-Google-Smtp-Source: APiQypI+Q3WGK6zfJo3SW55+gzzq9kj6/3qS+R1T7GxurnRzKhshzL99vBmf8fn+reyTSWbMUvbZ6A==
X-Received: by 2002:a17:902:a40e:: with SMTP id
 p14mr8976298plq.295.1585935321438; 
 Fri, 03 Apr 2020 10:35:21 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id b11sm4824679pfr.155.2020.04.03.10.35.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 10:35:20 -0700 (PDT)
Date: Fri, 03 Apr 2020 10:35:20 -0700 (PDT)
X-Google-Original-Date: Fri, 03 Apr 2020 10:35:13 PDT (-0700)
Subject: Re: Kendryte K210 support v4
In-Reply-To: <CO2PR04MB2343F5DC42542E7FC9268FF2E7CC0@CO2PR04MB2343.namprd04.prod.outlook.com>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-10bc8cda-b6c0-4561-b3d4-0336fdb6e41d@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_103524_995049_4C3CADDC 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, 26 Mar 2020 17:38:50 PDT (-0700), Damien Le Moal wrote:
>> On 2020/03/27 8:59, Palmer Dabbelt wrote:
>> On Thu, 26 Mar 2020 16:40:34 PDT (-0700), Damien Le Moal wrote:
>>> On 2020/03/27 7:09, Palmer Dabbelt wrote:
>>> On Mon, 23 Mar 2020 21:19:05 PDT (-0700), Damien Le Moal wrote:
>>>>> Palmer,
>>>>
>>>> Ping ?
>>>>
>>>> It would be great to get this series in 5.7.
>>>
>>> Well, the real issue here is that the new series don't appear to address the
>>> fundamental issue I had with the patch set (kernel binaries that only run on
>>> one system).  As a result it's gone on the list of things I need to go fix,
>>> which is quite a bit longer than the review queue.
>>>
>> 
>> I do not understand... Are you referring to the compressed instruction #ifdef
>> that was in the unaligned load/store handler ? The latest v4 removed that and I
>> actuall tested all 4 combinations of kernel and user space being compiled with
>> and without compressed instructions. All worked fine.
>> 
>> We had the same problem in OpenSBI by the way and we fixed it there too.
>> 
>> It's the BUILTIN_DTB issue -- this should look up the DTB to use based on some
>> sort of SOC unique identifier, either something unique in the device tree that
>> was provided (assuming whatever loads Linux on the Kendryte provides one) or
>> mvendorid+marchid+mimpid (probably with some sort of masking).
> 
> Hmmm. Yes, that would be nice. However, an SoC identifier is not the same as a
> board identifier, and since the device tree describes not just the SoC, I am not
> sure this would in the end be a unique enough ID and so not improve anything.

IIRC there's only one DT for this platform anyway, so it at least fixes the
issue here.

> The other problem with this I think is that this does not improve in any way the
> "bad" case where none of the embedded DTBs available match the hardware. What to
> do then ? At that point, the kernel code is such in an early stage that it
> cannot even display anything. That is the same situation with the current single
> BUILTIN dtb: if the dtb is wrong, the kernel will likely not boot.
>
> The current BUILTIN_DTB approach comes from other arch where that already
> exists. Nothing new here, and it looks like other arch at least didn't mind the
> end-result special kernel-for-this-paltform-only approach. We are talking about
> a tiny hardware/super embedded thing here. I sure would not want to use BUILTIN
> DTB for anything bigger then the Kendryte boards and this may be where we can
> improve using KConfig: allow selecting BUILTIN DTB only if the KENDRYTE SOC is
> selected ?

Well, the ARM stuff has a whole bunch of compile-time issues with supporting
multiple vendors' SOCs at the same time.  That's proving to be a big headache.

> 
> In the end, I would really like to see this series in 5.7 to enable all the
> hobbyist and hackers out there to more easily contribute improvements in this
> area. I do not see much problem with starting with the BUILTIN DTB as it is and
> improve on it as we go. There will not be any "backward compatibility" problems
> that I can see.

OK, I'll just go fix it.

