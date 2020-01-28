Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E8414C0DD
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 20:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w3aO2o1sbpQWlmUjTDjxVm4Jxb7u03pk3/+gthp7GiY=; b=rsHEr52m/xpnERb6qzQfwdtbsN
	v99UY12saVLA/pIPCMAFRRhfa3uotshmj68FSPFxGex5hLyUnEtLWBugwOx55MXoJndZ84D7DmoFJ
	lIyMOPDdxmRxaxh2Pz4ITcYlzSjfxaeTzlgD5X56bl7cBnrJcBNN7CyEaTImuDFUBcyHARLt0vvPh
	Y6eo28yJIVYEdFpW50zTgV4jbyk13QSe2C0XggB4K0H6aBibtiZRyb2A+5NlaBrP+PxGRpv3NQTPS
	wo2mEGzdlIxZ9MS0VYWQso6cb6T7sXmNDitUdXoJByfUm60yHVZBZaKm/nq6W7PIFf90SAf1lGekQ
	qBJxtHNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwWS7-0006Tt-LI; Tue, 28 Jan 2020 19:23:11 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwWS5-0006Si-9h
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 19:23:10 +0000
Received: by mail-oi1-x230.google.com with SMTP id l136so11490782oig.1
 for <linux-riscv@lists.infradead.org>; Tue, 28 Jan 2020 11:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=w3aO2o1sbpQWlmUjTDjxVm4Jxb7u03pk3/+gthp7GiY=;
 b=xoKqf+yWZweFU06N3KkN2l7e7bIrHFkWmCysdIaPUkcjFaBjq2MEzIp0Rg1g0lPIE+
 Se0Y4nGrb46YJAqc1a5i05DxobOA3DrvHzZZ6woVUyYP2McSs+Q9HuU4CwxW1XJwD5C7
 S07YL15BHH2r8u2bQ+WrXuQi3V+46HNmm8Xz+b+9oWBR0nmBjSByQvTa/MXc/WZ5YKYx
 97nD3kY7MB7cKan4PUtoKL9ayDfVeeZe8wGMi/pHCBkO1CDZ2z7vM0UqPyohKRPz8S8f
 G7W6sRPKmG9uxSIMr7oXSKskTFndlCUp3wzURPBwktMgSAGj2NtfH7gZJkWdDZawo9yH
 ytiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=w3aO2o1sbpQWlmUjTDjxVm4Jxb7u03pk3/+gthp7GiY=;
 b=QILJQOXD5pPPctGEP+2NiueCEPNoC+1AQc4IkJVIq2LKn6f4V/aXPlu35+HtkLBfMM
 6xVxjytgA8GvTUiQR2nt4WwJchB957mBSaGi+x87y/QzL/y9SoeLnUiZr6k2V9sqaVcq
 XGTvUXK0vSSoSyJ45IOIW7ZjdbsWgKLBTvK7GUD5tCjcg1iWStTq9xlccZX1TiuVg7X/
 ELFze2gxDsDCngFSEiaws+ykbnMmeX7hnhyaPYSQlTewsgvfBSg3E8Gl8+iFHsVaIRB0
 uaGlB1VvAIynd5SvqRSqYtA+Xdku1tVpy6ZY2HM2uEc46XfW+y+FZQr7WKyJvIAmRf+a
 gcnw==
X-Gm-Message-State: APjAAAXu/djCOc+ZwqiaJYyX47A+HD6vKFk30eah4Kj+zhWowDnGGzb1
 3+tOEH3lRXllouEz5POD5YlPEPSLeek=
X-Google-Smtp-Source: APXvYqxHNC7R5SP/EN6f8cnf6802Ld6oDQUQTqYAk11px3xXYwpeKgUQqgMTPCqzjQpuhLti2XFeYQ==
X-Received: by 2002:a54:4010:: with SMTP id x16mr4067760oie.174.1580239387719; 
 Tue, 28 Jan 2020 11:23:07 -0800 (PST)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com.
 [209.85.167.179])
 by smtp.gmail.com with ESMTPSA id t3sm3361838otk.72.2020.01.28.11.23.06
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 11:23:07 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id z64so11478888oia.4
 for <linux-riscv@lists.infradead.org>; Tue, 28 Jan 2020 11:23:06 -0800 (PST)
X-Received: by 2002:aca:4306:: with SMTP id q6mr3990760oia.54.1580239386479;
 Tue, 28 Jan 2020 11:23:06 -0800 (PST)
MIME-Version: 1.0
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Tue, 28 Jan 2020 16:22:55 -0300
X-Gmail-Original-Message-ID: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
Message-ID: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
Subject: Error on loading some network Kernel modules
To: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_112309_407133_B39F340C 
X-CRM114-Status: UNSURE (   5.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I currently run stock Kernel 5.5.0-rc7 on my Unleashed board with most
network features I need baked into the kernel instead of modules.

I tried building a kernel with these network features as modules but
when loading some of them I got this error:

root@unleashed:~# uname -a
Linux unleashed 5.5.0-rc7-dirty #4 SMP Fri Jan 24 18:16:43 -02 2020
riscv64 GNU/Linux

root@unleashed:~# modprobe br_netfilter
[  139.290533] br_netfilter: target ffffffe0000422d8 can not be
addressed by the 32-bit offset from PC = 000000003dfd6deb

root@unleashed:~# modprobe openvswitch
[  101.830567] openvswitch: target ffffffe0000422d8 can not be
addressed by the 32-bit offset from PC = 000000007e236a39
modprobe: ERROR: could not insert 'openvswitch': Invalid argument

The config I used to build the modules is on:
https://gist.github.com/carlosedp/9f7a6ecde1dc9cebdda62b60d823b15a

The config I'm using that has all features worked is on:
https://github.com/carlosedp/riscv-bringup/raw/master/unleashed/unleashed_config
-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

