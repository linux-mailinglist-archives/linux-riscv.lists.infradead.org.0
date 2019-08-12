Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552078A868
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 22:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Gl0c1mB3hWNsNSFsatLuRqGIernxqda6p+a1v++53vs=; b=tuv
	kVs5daqBtcJ6c9aQyiOGeB5hmEuA/76gxSBeiKCFxuBLdJMd4yWpEt7fiuKy81jY1D4Py3tCgiku4
	9/yhhf7T3HoZ8ler/GGYn98RxaIGqWitLCLU1cYhJ4tFRfUHIW94ZuEHWU6Nglj5qDewiyuzVmDWg
	cB5Ziqqh22TlyxtKd9s5ELFeX33e002zw2iGnNGfmuq/kY0G3tnd+9NhLQkzxnE5MXq38EHANIt7r
	aATWh57Yo+8f83O6OT41yTElsjcCsOhDco6jvuR5gLHbjc1PmYw/YCfjZ2OJEmEYVwX/B8651JRxm
	ZmRAiwjTwqObVygk92I1NpP+Ih/ZzIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGzn-0000uh-Sv; Mon, 12 Aug 2019 20:32:48 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGzj-0000uO-Ni
 for linux-riscv@lists.infradead.org; Mon, 12 Aug 2019 20:32:45 +0000
Received: by mail-ot1-x342.google.com with SMTP id b7so113731271otl.11
 for <linux-riscv@lists.infradead.org>; Mon, 12 Aug 2019 13:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=sender:mime-version:from:date:message-id:subject:to;
 bh=ga7ZU2buVwoY9BwmzKpUUPnBVcgMTiJLCKLd/fAqQ7w=;
 b=y8rcvQ8+yHvHVOI1xFARV3rykIHSvyf5VaeqeHUR3GvSQc827NZzcgE5+gec2hRTqK
 EPbtzwzDw1xZuE/lIBOrCFYDZjwcew1Fj9DluDE37KXDtUBh0vJqd4JJH+gR7nZOk2aX
 W7hyVpfQOy3WiMjsfbmnraIc5Ig3akyOA1wzFGjeake/OWqyDmjz4fYk+FHvp41wC65y
 A6ffMm21S83kGeUeNcH600r56TAfkbnuJkQ+Fe6Z2giEnR5cDok7tjwil39r/9YSdakw
 9Sh9ABPClU6K7k8ik5rrbwjYSKQ9vZGqzI8GuZMqWNuacpiI2BSW7gVoYxFSB4+uhxPJ
 gUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:mime-version:from:date:message-id:subject
 :to; bh=ga7ZU2buVwoY9BwmzKpUUPnBVcgMTiJLCKLd/fAqQ7w=;
 b=RKHyBz3szLRxWYj0SSOwnArHZyNyd5IK2hP9tHP9ANIYL1scTK92qKh+HyJr9nvMLa
 m1f5rgvHPyCod6rzyWO7UVJZcx6SpVPrIuecdySqpwhYJMrAtgi39Yf5n7yKbN4jxi+Z
 Kp5y/bPbHJBUJ1PFQlXtgXXbSUgunzoxcHePEwggV7VK3R+8Hxn+zBzuENWng4g6qZjp
 QeXpp6+RkV6pqQrG310y37X//bnqF1gfoAe1jD4Wg2iTreO8o9Ws4TTUe1Xz6ZZ+TAIN
 Ssyg2L70DBS+1g0UwAWgJGqTP7zRliKLHEvmnt2+w1RjYvATRbJayonvysipV5DPfTSt
 GWiQ==
X-Gm-Message-State: APjAAAUoQIceZ4M/D2K4aEEUrk1EDE+zVNqtc1qHohF2pposA/irdqev
 DHTGK2g+QFGbmJUffa3FZ7S5Hi4FHSQ=
X-Google-Smtp-Source: APXvYqxj99PyaHt35jUXn7wVjazyqHktGdLRG7c7AmRGwbN/RA59vL2n8e7LOFgqwFS3HTBECkcsIw==
X-Received: by 2002:a9d:4004:: with SMTP id m4mr815840ote.146.1565641962632;
 Mon, 12 Aug 2019 13:32:42 -0700 (PDT)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com.
 [209.85.210.48])
 by smtp.gmail.com with ESMTPSA id p2sm35232435otl.59.2019.08.12.13.32.41
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 13:32:41 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id n5so164081046otk.1
 for <linux-riscv@lists.infradead.org>; Mon, 12 Aug 2019 13:32:41 -0700 (PDT)
X-Received: by 2002:a05:6830:1bf4:: with SMTP id
 k20mr17818831otb.79.1565641961474; 
 Mon, 12 Aug 2019 13:32:41 -0700 (PDT)
MIME-Version: 1.0
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Mon, 12 Aug 2019 17:32:30 -0300
X-Gmail-Original-Message-ID: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
Message-ID: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
Subject: Changing SiFive Unleashed core clock rate on 5.x kernel
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_133243_776186_9B8A3965 
X-CRM114-Status: UNSURE (   5.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Back in 4.x kernel, we could set the board clock rate by echoing like:

echo 1450000000 > /sys/devices/platform/soc/10000000.prci/rate

Now with Kernel 5.x and with the board DTB, what's the correct way to
set this clock rate? I tried changing RTCCLK_FREQ from 1000000 to
1450000 but I got some clock skew during use.

Is there anywhere else this need to be set?

Thanks


-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
