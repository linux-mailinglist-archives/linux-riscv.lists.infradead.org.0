Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851241E22D9
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 15:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kR/Y8SdNvO0bkGw+Ri/0kUOMzzCgyixz2CAGCI76tRY=; b=Ir+/ANhsJ3gxuqT4kAkxx7Ltj5
	gBJn1l9irO09RvZ6/lzwZGiwOPgNM92uhJ+In/evw2K8qJz/zQ0kU9csftxMlq3u5RBpwnWaBYcNs
	x/I++Lb2d3eaau2EB5M8XkGAh5b0lfZmtQC9YgJF69rwe5I6+iA+fBIh/mee9NIZd0jIpCqg6r5YJ
	9nyHSOtSouO3H7dxlBpWx9WrjXafkSrGuyZ5okE+YYu1iu67qy9AA3OZZtQ7U0W9eNejPr85Fdf1G
	I+L74jHBUfGr7KH6gAtXuJBVOJ02FjdmsB6Wu027KrutWZj/fjrYtl1DW06kui76VXEoGXo2CmgCn
	2nYjAQow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZWU-0007cc-Kg; Tue, 26 May 2020 13:21:38 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZWQ-0007bU-48
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 13:21:35 +0000
Received: by mail-ed1-x532.google.com with SMTP id c35so1309275edf.5
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 06:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=kR/Y8SdNvO0bkGw+Ri/0kUOMzzCgyixz2CAGCI76tRY=;
 b=czD4F9qigBNeGyXPIbFCIv3FrBYFR/n0ih6udSVEh6QQ6lj0PVNzfLnvsLWflsEAMH
 o+TmtqggjfrF29k1DjPoIUpBiwoH+oNc85ndZf0xFM2dXUikxUEFb9F0lFRCWMgqbNX8
 iatTPcMldn+Zviur0CpQWpr0aYyePZqXE2tjcrW3PdS5N777VfusPhvGW0bs2SwsESGr
 pEwB81pULK/sj991qkYSXz1CMwGbd/D43uvnmvHAIucRNsl/L4YblVjCZaimbh60lFQz
 7YLC7tJ2Az27tieHZYzTmHbLZRklZk8SX6wUWooaI1S5NOQwmhDvJPuSHWpHZTluOh4m
 x2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=kR/Y8SdNvO0bkGw+Ri/0kUOMzzCgyixz2CAGCI76tRY=;
 b=hz7QhMlBqg9pcLLn7VTTxmsYIDuSo1BB6ZDblwi7TLdKTuxuJgO7w23iZsMcfA3Nt6
 bHpKewUhqXqfSv7BpQfFxxfZICgo5sL3TEoGzqqAJ9nlIxearwSO7SbgOPoViFkT9/yq
 ioqHly5LuNj+Qom4DyROlyf706pC6a8iurP+mV7heS0wsWeL372eZdoomIBamQO1HrOq
 x7dk8R9hmIM9vPyHzc8BnXFa6rD63uNoJ/7DnOuCeT9MrFB8wSGxn1xKSimDzgPfb4BZ
 4i1+p0rG1uUZRRei6Dbb9Ycw/0D3JImp0XGLYS5R4PIkyWyU8oc0N6je4f1xKkAOZdxR
 St7w==
X-Gm-Message-State: AOAM530foPiuU5ktOz6KICyCniBvXn2GvoTVtjZsGLU0HLgH2/oacXDh
 neLtmpoMk6D9E25xnBdRZXjtg7a+JA2Gw0IiJ2xfJqQWUpM=
X-Google-Smtp-Source: ABdhPJzlHoGBnghLF89HY/rh9zq5spIXoQnwrlRyDldonoT0x1VXCzZC9jIbP0t/nvi3Xg6IN+IrnC6axm1uuVZ5VKg=
X-Received: by 2002:a05:6402:1adc:: with SMTP id
 ba28mr19566820edb.14.1590499291501; 
 Tue, 26 May 2020 06:21:31 -0700 (PDT)
MIME-Version: 1.0
From: vaibhav jadhav <vaibhavjadhav.linuxmailing@gmail.com>
Date: Tue, 26 May 2020 18:51:19 +0530
Message-ID: <CAFzyPPSvjVh6m5XJTLtEJWYt82kpBzhfpj8EnXvvGrV-hh4nhg@mail.gmail.com>
Subject: Kselftest pstore test failure on riscv
To: linux-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_062134_164571_DA61F6F3 
X-CRM114-Status: UNSURE (   4.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vaibhavjadhav.linuxmailing[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi,

To run the Kselftest pstore test suite I use following:

Hardware: Freedom U540
Architecture: RISCV
Kernel: 5.4.3

Steps followed to run the test:
1.Cloning linux kernel sources from https://github.com/torvalds/linux.git
2.Extracting it.
3.From the cloned kernel source top directory running: # make -C
tools/testing/selftests/ TARGETS=pstore run_tests

Following is the log:
make: Entering directory '/mnt/linux-master/tools/testing/selftests'
make --no-builtin-rules ARCH=riscv -C ../../.. headers_install
make[1]: Entering directory '/mnt/linux-master'
  INSTALL ./usr/include
make[1]: Leaving directory '/mnt/linux-master'
make[1]: Entering directory '/mnt/linux-master/tools/testing/selftests/pstore'
make[1]: Nothing to be done for 'all'.
make[1]: Leaving directory '/mnt/linux-master/tools/testing/selftests/pstore'
make[1]: Entering directory '/mnt/linux-master/tools/testing/selftests/pstore'
TAP version 13
1..2
# selftests: pstore: pstore_tests
# === Pstore unit tests (pstore_tests) ===
# UUID=a5947bf3-bc04-4175-ac85-4056024cbc4b
# Checking pstore backend is registered ... ok
#     backend=(null)
#     cmdline=earlycon=sbi earlycon=sbi root=/dev/mmcblk0p3 rootwait
console=ttySIF0 console=tty0
# Checking pstore console is registered ... FAIL
# Checking /dev/pmsg0 exists ... FAIL
# Writing unique string to /dev/pmsg0 ... FAIL
not ok 1 selftests: pstore: pstore_tests # exit=1
# selftests: pstore: pstore_post_reboot_tests
# === Pstore unit tests (pstore_post_reboot_tests) ===
# UUID=265706d3-ab26-4568-842c-2cf1756ad9db
# Checking pstore backend is registered ... ok
#     backend=(null)
#     cmdline=earlycon=sbi earlycon=sbi root=/dev/mmcblk0p3 rootwait
console=ttySIF0 console=tty0
# pstore_crash_test has not been executed yet. we skip further tests.
not ok 2 selftests: pstore: pstore_post_reboot_tests # SKIP
make[1]: Leaving directory '/mnt/linux-master/tools/testing/selftests/pstore'
make: Leaving directory '/mnt/linux-master/tools/testing/selftests'

Trying to find reasons for failue:
# Checking pstore console is registered ... FAIL
# Checking /dev/pmsg0 exists ... FAIL
# Writing unique string to /dev/pmsg0 ... FAIL

Thankyou

