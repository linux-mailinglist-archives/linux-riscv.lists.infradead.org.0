Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65EE8C5DB
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 04:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCpGjYzSgnOjjWL+VH6d7qfx4V4N+svhvEMOSzy0fXc=; b=L/cOS/VomGqu5+
	f7hvBfzEmgNoA7pTs2n0RcVZq1AefK0JT3cTSMWKw1bqtSqmN/pm/IHjUudE2SJpJbbMQ445B921J
	ZWUQQ+/x0Eh/FN4L5dOisS4Pf5Kr4rw981Lr+UvCiq76Mh6k1LWqTnxzBKf1f/qncjZ05w1nPYiCg
	o/3iirHE05VCxOnpqBEePr02QsXPgK8LvqtXeFKeFek91l2c1s8iWtrX8GcrGLhik68XPf8yykYVs
	dIY+fO9kkbMdAdhih2hZ3H4SrxD+94V2mCFVf0yM74htejkDi24b8n+g8Tif69dSUBUEEb55ODkvw
	pfUw/MWxMbYlauFebVHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxij1-0004IM-E6; Wed, 14 Aug 2019 02:09:19 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxiix-0004GP-EA
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 02:09:16 +0000
Received: by mail-ot1-x341.google.com with SMTP id q20so25934955otl.0
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 19:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=U5rK7CmZdWXI7174a6MB3z970/1H6iq0dTgliVzFJu8=;
 b=f0mdcQOFQqeKflGWWG+kh3b7Xr7vrgZEqZ7lWhJUP6cljRtolwr/lQbk5qfyoJGbuP
 3uGPlBTw/KmHJ9YPHGKF4FvOvCWwsDHrceZ2n14obdkNFCdmgoDprm0Fg4APAb+BXVs3
 nnJtSQL5oJrJgsKDc3iZbBGJmN8FJtDM60LLdBJ9E62/Tez5nwj4vE79VlUbmz8juILM
 sBEN1K77inOSygU6lRXV2n3okV2xJ/Om7Dyf54dTsdLm48Whn/9ehXxwLexV9VEA6hLZ
 uEhWSVq79gN2Kqi7eK/f3H4F9sZYYMFLzZgG7tX6yG+UL8nTEWqoIxdW+zc4QalESIMN
 B/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=U5rK7CmZdWXI7174a6MB3z970/1H6iq0dTgliVzFJu8=;
 b=jsjw0CfKOhRnNb7Di4rfwVa5/iqDyu766KBIF610EbgH0eui69HibqNORkrmLbVruz
 Czkh2fAJ/t38yDj3Zj6t+wsHX56PuybUU4Sn17TVEqk26ddY/z5UTt5GUtpSao4v6hIJ
 Ch1aI6VVsq5szl/8y4CeNVW9pDz5o4eOIbLTBiFjqXtwIGOJquqIATzY/6IQ7FbTM/+W
 EUsw2fBBcnoNvQSK1hTJ6MMySf8AYLz4oHg1hfDw4Y4iLa+ZduWkJv4Xq/YVV1Jp0g0v
 KGSZ7/zfmR0DNfSZf67EYZRL91T9bjY3f2IzBfftf0hSfMAbhED+Os8hEBm8fljNgEPr
 vRDw==
X-Gm-Message-State: APjAAAXSs/bKtRgtau/ppP/bsjnIme0S+gLRDVpz+T/J0ff5jguW6dsJ
 6irLxprvlpLGbHa4yDG4EdUZANEN4OU=
X-Google-Smtp-Source: APXvYqyQjKGcvVCmZUjpyJHlxUuKe9HA1j8+Dg2m+K8ewXImqzFUN2InkvHO9U4QhQFTqDrwOYtW4w==
X-Received: by 2002:a05:6602:2413:: with SMTP id
 s19mr43520646ioa.161.1565748554426; 
 Tue, 13 Aug 2019 19:09:14 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 v13sm87500772ioq.13.2019.08.13.19.09.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 19:09:13 -0700 (PDT)
Date: Tue, 13 Aug 2019 19:09:13 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Carlos Eduardo de Paula <me@carlosedp.com>
Subject: Re: Changing SiFive Unleashed core clock rate on 5.x kernel
In-Reply-To: <alpine.DEB.2.21.9999.1908131417450.29979@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1908131908000.19217@viisi.sifive.com>
References: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908131417450.29979@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_190915_490652_B656AFC7 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019, Paul Walmsley wrote:

> On Mon, 12 Aug 2019, Carlos Eduardo de Paula wrote:
> 
> > Now with Kernel 5.x and with the board DTB, what's the correct way to
> > set this clock rate?
> 
> There are some experimental patches here:
> 
> https://github.com/sifive/riscv-linux/tree/dev/paulw/cpufreq-dt-aloe-v5.3-rc4
> 
> Only the userspace governor is enabled - for one-off, manual frequency 
> changes, like the one you mentioned above.

By the way, the command lines to change this would be the usual CPUFreq 
sysfs changes.  Something like this:

echo userspace > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo 1400000 > /sys/devices/system/cpu/cpufreq/policy0/scaling_setspeed


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
