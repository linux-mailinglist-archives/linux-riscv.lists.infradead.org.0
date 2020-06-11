Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10211F6E0F
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 21:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=WuBG/7gO1pGimiHDOZIk8vvYZE8+zKVmasp1lwOZHWI=; b=qGFxJ5ukU6rR3b
	sa6E/ugqxQXZODN6X8+JbDQClNAVH/LAZuBUp2WCoyhLebfTWig1ngOSc6D8T5WwKF6knEL28+P20
	CguIqL5nzb0+i/VTOHBsHQU5SrZH73BNgl2DfU+NhStJpAzQXo/BBOroClC5WysrmGsZlkjaOoLeS
	BX4C1tnVQ6QY4bCl6yzsf5hxdl4U3joYLMmJabCIQhVuyhGtVnKPeY43BNDejgiQWQQk3NBjt1iJv
	Gfq9IDON47mhZn6lIBzrREjOvIEo++JV95cDlmLNIGdjlccAhczdyOZudcbKCUH3IaeIqHRdw4Vye
	QZU2WjKSxAbJbgqvm6sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjT3T-0001BF-TC; Thu, 11 Jun 2020 19:40:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjT3O-00014O-Rl
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 19:40:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id j1so3123284pfe.4
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jun 2020 12:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=WuBG/7gO1pGimiHDOZIk8vvYZE8+zKVmasp1lwOZHWI=;
 b=Nf5yxPclgc9+6Ofzi+ihJTT8INIyL7xMAzjko32vwk0kJ4IcCtdBfLn3nOevLTSXDx
 wRVl9Y7yk7jKmyNbdoUclNVdQD3LNzmw7fvA8uMYb31QEHqWTHqadPk16nEy1mIYx6j5
 yseqQ5nxqtX1SHcsrzeY6mkmuaNV/k9k+xhwVsPpjGPFRkaVaHImmtJFdWhlYy+dT8mY
 L78Y+LE2/IjV+/lHyd3swW0FcT/QB1fzLDoOcGEKfYFfpoRVxqgH0ilO0/8Y0mtn+uz+
 bPPeaID8QAXqkYmzJ1vS67leNesB4WJV4Zji4C2rF5Ze9hjX7uXdvGI0PLVSC10fEtbc
 q+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=WuBG/7gO1pGimiHDOZIk8vvYZE8+zKVmasp1lwOZHWI=;
 b=a8fKqmDhDPLHCU1rsqul3N+pa4EeU5eJ1tnsHEbNbtIcRvGTCjuYKejvGGnqRRpDv7
 BwZKFppeqVs3ECKnL58jHeew7hkDBqoirqWnoIjVPrp6PY+V+kF8Mxdp8A2hFJ3/HZKb
 f282AvrwnyzeHkXivFn9DH0m0L7p8ZG/hPgFMPio9f54Shh3XyIGA2PsNjKhuqPXYsG1
 4hmTBZscSIUUEYGrBpjVP6EV1fKAs499cLx1eVFILGxq0NHTzwyYx0r2ERsZu7oxKhFY
 l2NSoRna5NyKyh4U8F8DDKCU82aGvvE+oT50VQD7gE31awUROq0HzfDnyyHdted+pCSE
 fOeg==
X-Gm-Message-State: AOAM533V2E5RzUf6fbRex+tI0h6R5g6bUGXkX0wDeQZWRonzyPGTSMMn
 f6ypAORUI9cn19m1t5EYJ7yXKg==
X-Google-Smtp-Source: ABdhPJxwpcvXGTnNtbZw5TZDA/FKcdztA4yKYZZ3JCvqR6nhgRx2MBnhmnQxPMkWOPRAGxSFNNKytw==
X-Received: by 2002:a63:d318:: with SMTP id b24mr7373994pgg.403.1591904397942; 
 Thu, 11 Jun 2020 12:39:57 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id s15sm3186576pgv.5.2020.06.11.12.39.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 12:39:57 -0700 (PDT)
Date: Thu, 11 Jun 2020 12:39:57 -0700 (PDT)
X-Google-Original-Date: Thu, 11 Jun 2020 12:39:55 PDT (-0700)
Subject: Re: [PATCH 0/3] RISC-V: Add kexec/kdump support
In-Reply-To: <f1f3932ac90089d2d07d89e05270a98d@mailhost.ics.forth.gr>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: mick@ics.forth.gr
Message-ID: <mhng-3accafc5-2df8-4798-aebd-b86a0f0414b7@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_123958_948546_AE3B4FFD 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: david.abdurachmanov@sifive.com, anup@brainfault.org,
 Atish Patra <Atish.Patra@wdc.com>, yibin_liu@c-sky.com,
 Paul Walmsley <paul.walmsley@sifive.com>, mick@ics.forth.gr,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 11 Jun 2020 12:09:08 PDT (-0700), mick@ics.forth.gr wrote:
> Στις 2020-05-21 21:42, Nick Kossifidis έγραψε:
>> Στις 2020-04-24 20:12, Nick Kossifidis έγραψε:
>>> This patch series adds kexec/kdump and crash kernel
>>> support on RISC-V. For testing the patches a patched
>>> version of kexec-tools is needed. The patch is still
>>> a work in progress but a draft version can be found at:
>>>
>>> http://riscv.ics.forth.gr/kexec-tools.patch
>>>
>>
>> Any comments / feedback on this ? Should we get it in ?
>>
>> Regards,
>> Nick
>
> Anyone ?

Sorry, I dropped the ball on this one.  After the CPU hotplug breakage I
decided I need to get a pre-merge test for all these new features, and I
haven't gotten around to actually doing so yet.  The merge window is closing
right now, so with any luck I'll have some time to get around to my patch
backlog -- first I need to go spin up some better testing, though.

