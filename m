Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50558177E2C
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 18:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ZYyTe7dD0f8CvlodvaFSBY4T+0LuLzAx2lyOiyIeWAw=; b=SK52JAXCFbCeMi
	7o2GJHvcxO0edFgq38VJk2oFGjPoUd9XldCFlNqN4KhEiZhisrTbtc7xkkUoxXcaOjrP89lTtSI/p
	sTxv32v5vK5F4SV2UlhBr/l2fs3GmX1Izi+64m3haZibeuYg9DMa9h0iAShUzW83sUt1bQfPnjsy7
	/QDAAljbOpjQrNA+yaEoaQIOP4NRniaV6gNZLJUU4PiAq4vg3n980tFDqVg9JEYwpRtMSdCZLYKii
	XJhzTh9iObQ7tkTjfkqsXMakrmUzi1ec6YLfxTvg9jZCg5ogb2+E/OQigp0S03KzvRaYN5rt8qcvx
	aU2VexVceH2ShTAY80NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9BlE-0007Bj-En; Tue, 03 Mar 2020 17:55:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BlA-0007Af-6y
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 17:55:13 +0000
Received: by mail-pl1-x644.google.com with SMTP id x17so1644902plm.10
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 09:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ZYyTe7dD0f8CvlodvaFSBY4T+0LuLzAx2lyOiyIeWAw=;
 b=zRtJA3wm3MQ5pRqwalHG6UtXT02ioF+mHErjs1nXkOOTCon8efC0VtPdPekDH394g3
 IbEJf1wprR8XvNcei9K8haA1y9XeSij7hI8HHG60QqBGr28noC7dKjg4tZFJLJ+jJ7lY
 jjHYVUkj/Yzs5AL2pLcjTQLfCQOycNWS2JaDGgSblDhqKaGmwfPMX+WC6x4lErGMSj2e
 uPgbgk74XxEsB0Uj+adZG8AvG6MeBPvHRmgZMQwvgCGgi8SghaSm5KrhZyQhh9EBIutE
 76XDWLhiC5MJ2syoI5A8RM35CnmyXnh0ioD8WrhoCGDFQZE4TEgVgnPOGrTDBRyyV/ne
 omSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ZYyTe7dD0f8CvlodvaFSBY4T+0LuLzAx2lyOiyIeWAw=;
 b=h7jdHstzvv7Yn+gP10ztjwkb4OHTg9qlot2waECN65fTPCfNgPhVdh7JXgRtHRBttB
 zHCnLo5pMb5Wuoebbg7cQwsZwXJPHqtH9zIhcvxTE8gv3Z0awPk8BhvJnL+RRof4ilJB
 HKB8S4dQhNFndp12PX+YgOvtkpgQuQ7pYtbUmQKp3gjOTH5Ahv5zL80AFoyVod2JI+1Z
 nca0LY+t0TvvIWygEw5j7AXVi+9z6p/r4mwZlXVl08zxGEM6uAQEwn6Jef6ryUA5RExH
 Do4ALMkRnuIW7t1+YVHlnz6VNn3IcGbv4Si0FViQIi/ZdvBAKglzBYmVuSOwIAj42S4U
 sepw==
X-Gm-Message-State: ANhLgQ0ijAM8pambwc81y/WowlWJHMByLja7vcgf3OScqbdpgx3FP2wK
 kkSQa8SmQ1VN25jnEGRUCMJ6LZ3ZFgI=
X-Google-Smtp-Source: ADFU+vuKc3jVLGpaNwoGxZ4r38rovpZ+mHwCyyZycowdPXRgzjM6iaIQymbENr48CbA9H+HKPHnJ4A==
X-Received: by 2002:a17:90a:3701:: with SMTP id
 u1mr5049507pjb.25.1583258111018; 
 Tue, 03 Mar 2020 09:55:11 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id u6sm24584506pgj.7.2020.03.03.09.55.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 09:55:10 -0800 (PST)
Date: Tue, 03 Mar 2020 09:55:10 -0800 (PST)
X-Google-Original-Date: Tue, 03 Mar 2020 09:55:07 PST (-0800)
Subject: Re: [PATCH] riscv: fix seccomp reject syscall code path
In-Reply-To: <202003022042.2A99B9B0@keescook>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: keescook@chromium.org
Message-ID: <mhng-f926452f-8491-4deb-9721-a52487de676d@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_095512_279926_B7CC256E 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tycho@tycho.ws, aou@eecs.berkeley.edu, david.abdurachmanov@gmail.com,
 linux-kernel@vger.kernel.org, oleg@redhat.com, luto@amacapital.net,
 keith.packard@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 02 Mar 2020 20:46:46 PST (-0800), keescook@chromium.org wrote:
> On Sun, Feb 23, 2020 at 10:17:57AM -0700, Tycho Andersen wrote:
>> On Sat, Feb 08, 2020 at 08:18:17AM -0700, Tycho Andersen wrote:
>> > ...
>>
>> Ping, any risc-v people have thoughts on this?
>>
>> Tycho
>
> Re-ping. :) Can someone please pick this up? Original patch here:
> https://lore.kernel.org/lkml/20200208151817.12383-1-tycho@tycho.ws/

Sorry, the other messages didn't end up in my inbox.  I'll take a look, as this
seems like a good candidate for rc5.

